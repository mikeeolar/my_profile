import 'package:my_portfolio/core/utils/exports.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String? label;
  final String? hint;
  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?> onChanged;
  final bool enabled, loading;
  final TextStyle? style;
  final String? helperText;
  final bool arrowColor;
  final bool? greyLabelStyle;
  final String? labeltext;

  const CustomDropdown(
      {Key? key,
      this.label,
      this.labeltext,
      this.hint,
      required this.value,
      required this.items,
      required this.onChanged,
      this.greyLabelStyle = false,
      this.style,
      this.helperText,
      this.loading = false,
      this.enabled = true,
      this.arrowColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label == null
            ? const SizedBox()
            : Container(
                margin: EdgeInsets.only(bottom: 5.w),
                child: Text(
                  label!,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: greyLabelStyle! ? 11.sp : 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyLabelStyle!
                          ? const Color(0xFFACACAC)
                          : BrandColors.primary),
                ),
              ),
        loading
            ? const DropDownLoader()
            : AbsorbPointer(
                absorbing: !enabled,
                child: DropdownButtonFormField<T>(
                    validator: (value) =>
                        value == null ? 'Select a value' : null,
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: style ??
                            BrandTextStyles.regular.copyWith(
                                fontSize: 14.sp, color: const Color(0xFF798795),
                            ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 17.w, vertical: 12.h),
                        // label: Text(labeltext ?? hint ?? '', style: BrandTextStyles.regular.copyWith(
                        //         fontSize: 14.sp, color: const Color(0xFF798795),
                        //     ),),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF282828)),
                            borderRadius: BorderRadius.circular(4.r)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF282828)),
                            borderRadius: BorderRadius.circular(8.r)),
                        filled: true,
                        fillColor: BrandColors.bcFAFAFA),
                    style: style ??
                        BrandTextStyles.medium.copyWith(
                            fontSize: 15.sp,
                            height: 1.67,
                            color: BrandColors.bc2C2948),
                    dropdownColor: BrandColors.light,
                    elevation: 0,
                    isDense: true,
                    isExpanded: true,
                    icon: enabled
                        ? Icon(
                            Icons.keyboard_arrow_down,
                            color: BrandColors.bc848484,
                            size: 20.h,
                          )
                        : const SizedBox(),
                    value: value,
                    items: items,
                    borderRadius: BorderRadius.circular(4.r),
                    onChanged: onChanged),
              ),
        helperText == null
            ? const SizedBox.shrink()
            : SizedBox(
                height: 6.h,
              ),
        helperText == null
            ? const SizedBox.shrink()
            : Text(
                helperText!,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 12.sp,
                      color: BrandColors.grey9c,
                    ),
              )
      ],
    );
  }
}

class DropDownLoader extends StatelessWidget {
  const DropDownLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52.h,
        // margin: EdgeInsets.symmetric(vertical: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 17.w), //vertical: 13.h,
        decoration: BoxDecoration(
            color: BrandColors.bcFAFAFA,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: const Color(0xFFD9D9D9),
            )),
        child: Row(
          children: [
            SizedBox(
                width: 20.h,
                height: 20.h,
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                )),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Text(
                'Loading',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 14.sp, color: const Color(0xFFACACAC)),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: const Color(0xFF718096).withOpacity(0.5),
              size: 26.h,
            )
          ],
        ));
  }
}
