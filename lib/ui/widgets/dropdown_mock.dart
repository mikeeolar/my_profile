import 'package:my_portfolio/core/utils/exports.dart';

class DropdownMock extends StatelessWidget {
  final bool? error;
  final Widget title;

  const DropdownMock({
    Key? key,
    this.error = false,
    required this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.r),
        border: Border.all(
          color: error! ? Colors.red : const Color(0xFFD9D9D9),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: title),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 26.h,
            color: const Color(0xFFACACAC),
          )
        ],
      ),
    );
  }
}