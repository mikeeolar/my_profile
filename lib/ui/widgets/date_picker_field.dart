// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class DatePickerfield extends StatefulWidget {
  final String? label;
  final String? value;
  final String? placeholder;
  final DateTime? stopDate;
  final DateTime? startDate;
  final DateTime? initialDate;
  final ValueChanged<DateTime> onDateSelected;
  final bool enabled;
  final bool? greyLabelStyle;

  const DatePickerfield(
      {Key? key,
      this.label,
      this.value,
      this.placeholder,
      this.stopDate,
      this.startDate,
      this.initialDate,
      required this.onDateSelected,
      this.enabled = true,
      this.greyLabelStyle = false})
      : super(key: key);

  @override
  State<DatePickerfield> createState() => _DatePickerfieldState();
}

class _DatePickerfieldState extends State<DatePickerfield> {
  String date = '';
  late DateTime dateTime;
  final TextEditingController dobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialDate != null) {
      dateTime = widget.initialDate!;
    } else {
      dateTime = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day);
    }
    if (widget.value != null) dobController.text = widget.value!;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.value != null) {
      date = widget.value!;
    }
    if (widget.initialDate != null) {
      dateTime = widget.initialDate!;
    } else {
      dateTime = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: widget.enabled
              ? () async => await showPicker(
                    context: context,
                    initialDate: dateTime,
                    startDate: widget.startDate,
                    stopDate: widget.stopDate,
                    onComplete: (value) {
                      setState(() {
                        date = DateFormatUtil.yyyymmdd.format(value);
                        dateTime = value;
                        dobController.text = date;
                        widget.onDateSelected(value);
                      });
                    },
                  )
              : () {},
          borderRadius: BorderRadius.circular(4.r),
          child: CustomTextField(
            controller: dobController,
            label: widget.label,
            labelText: widget.placeholder,
            fillColor: BrandColors.bcFAFAFA,
            hintText: widget.placeholder,
            // suffixIcon: SvgPicture.asset(
            //   'calendar'.svg,
            //   color: BrandColors.primary,
            //   width: 15.w,
            // ),
            suffixConstraint: BoxConstraints(minWidth: 50.w),
            enabled: false,
          ),
        ),
      ],
    );
  }
}

Future showPicker(
    {required BuildContext context,
    required DateTime initialDate,
    DateTime? startDate,
    DateTime? stopDate,
    required ValueChanged<DateTime> onComplete}) async {
  final ThemeData theme = Theme.of(context);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: startDate ?? DateTime(1800),
        lastDate: stopDate ?? DateTime(2050),
      ).then((value) {
        if (value != null) {
          onComplete(value);
        }
      });
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return showModalBottomSheet(
          context: context,
          builder: (BuildContext builder) {
            return Container(
              height: 300.h,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (value) {
                  onComplete(value);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                initialDateTime: initialDate,
                minimumYear: startDate?.year ?? DateTime(1800).year,
                maximumYear: stopDate?.year ?? DateTime(2050).year,
                minimumDate: startDate ?? DateTime(1800),
                maximumDate: stopDate ?? DateTime(2050),
              ),
            );
          });
  }
}
