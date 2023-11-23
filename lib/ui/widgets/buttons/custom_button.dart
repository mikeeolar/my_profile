import 'package:my_portfolio/core/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Function onTap;
  final bool filled;
  final bool disable;
  final Color? backgroundColor;
  final Color? textColor;
  final double? textSize;
  final EdgeInsets? padding;
  final double? radius;
  final double? height;
  final Widget? child;
  final bool showBorder;
  final bool isLoading;
  final TextStyle? textStyle;

  const CustomButton(
      {Key? key,
      this.title,
      required this.onTap,
      this.filled = true,
      this.backgroundColor,
      this.textColor,
      this.textSize,
      this.disable = false,
      this.padding,
      this.radius,
      this.height,
      this.child,
      this.isLoading = false,
      this.showBorder = true,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius ?? 10.r),
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (!disable) {
            HapticFeedback.mediumImpact();
            onTap();
          }
        },
        borderRadius: BorderRadius.circular(50.r),
        child: Container(
          padding: height != null
              ? EdgeInsets.zero
              : padding ??
                  EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
              color: disable
                  ?  const Color(0x7FC14831)
                  : filled
                      ? (backgroundColor ?? BrandColors.primary)
                      : null,
              border: !disable
                  ? showBorder
                      ? Border.all(
                          color: backgroundColor ?? BrandColors.primary)
                      : null
                  : Border.all(
                      color: disable
                          ? Colors.transparent
                          : (backgroundColor ?? const Color(0xFF011B55))),
              borderRadius: BorderRadius.circular(radius ?? 50.r)),
          child: Center(
            child: isLoading
                ? Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                  child: const Center(
                      child: SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 1.5,
                        color: Colors.white,
                      ),
                    )),
                )
                : child ??
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '$title',
                        style: textStyle ??
                            BrandTextStyles.medium.copyWith(
                                fontSize: textSize ?? 16.sp,
                                color: textColor ?? Colors.white,
                                height: 1.875),
                        textAlign: TextAlign.center,
                      ),
                    ),
          ),
        ),
      ),
    );
  }
}
