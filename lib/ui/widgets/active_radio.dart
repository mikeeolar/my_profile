import 'package:my_portfolio/core/utils/exports.dart';

class ActiveRadio extends StatelessWidget {
  const ActiveRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('ellipse_outline'.svg),
        SvgPicture.asset('ellipse'.svg),
      ],
    );
  }
}
