import 'package:my_portfolio/core/utils/exports.dart';

class BottomSheetItems extends StatelessWidget {
  const BottomSheetItems({
    super.key,
    required this.onTap,
    required this.value,
  });

  final Function onTap;
  final String? value;

  @override
  Widget build(BuildContext context) {
    FocusNode node = FocusScope.of(context);
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: () {
          node.unfocus();
          onTap();
          locator<NavigationService>().back();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: CustomText(text: value ?? '', fontSize: 20.sp, fontWeight: FontWeight.w600,),
        ),
      ),
    );
  }
}
