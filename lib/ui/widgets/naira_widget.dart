import 'package:my_portfolio/core/utils/exports.dart';

class Naira extends StatelessWidget {
  const Naira({
    super.key,
    this.color,
    this.height,

  });

  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/nairra.png',
      color: color ?? kLightColor,
      height: height ?? 28.h,
    );
  }
}
