import 'package:my_portfolio/core/utils/exports.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingAnimation extends StatefulWidget {
  final double? height;
  final Color? color;

  const LoadingAnimation({Key? key, this.height = 30, this.color = kLightColor})
      : super(key: key);

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: SpinKitFadingCircle(
        color: widget.color,
        size: widget.height!,
      ),
    );
  }
}
