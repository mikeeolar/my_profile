
import 'package:my_portfolio/core/utils/exports.dart';

class CardSheet extends StatelessWidget {
  const CardSheet({
    Key? key,
    required this.ondone,
  }) : super(key: key);

  final Function ondone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Autopay Set-up',
            style: BrandTextStyles.medium.copyWith(
              color: const Color(0xFF282828),
              fontSize: 24.sp
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'You need to add a repayment method. Please link your Debit card for auto repayments. We will only debit you when your purchase is due for payment.',
            style: BrandTextStyles.regular.copyWith(
              color: const Color(0xFF5A5A5A),
              fontSize: 16.sp
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
              title: 'Link your ATM card',
              textColor: kDarkColor,
              showBorder: true,
              filled: false,
              onTap: () {
                // Navigator.of(context).pop();
                ondone();
              }),
          SizedBox(
            height: 10.h,
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
