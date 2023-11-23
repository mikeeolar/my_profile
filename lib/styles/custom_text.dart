import 'package:my_portfolio/core/utils/exports.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    this.lineHeight,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w400,
    required this.text,
    this.color = kDarkColor,
    this.textAlign = TextAlign.start,
    this.overflow = TextOverflow.visible,
    this.textDecoration,
    this.textDecorationColor,
    Key? key,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextOverflow overflow;
  final double? lineHeight;
  final TextDecoration? textDecoration;
  final Color? textDecorationColor;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            // fontFamily: 'Outfit',
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
            color: color,
            height: lineHeight,
            decoration: textDecoration,
            decorationColor: textDecorationColor,
          ),
    );
  }
}
