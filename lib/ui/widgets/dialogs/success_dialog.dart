// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_portfolio/core/utils/exports.dart';

class SuccessDialogView extends StatelessWidget {
  final DialogRequest request;
  final Function completer;

  const SuccessDialogView({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.dark,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50.h),
                      SvgPicture.asset(
                        'success'.svg,
                        width: 100.h,
                        height: 100.h,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        request.title ?? '',
                        style: BrandTextStyles.medium.copyWith(
                            fontSize: 20.sp, color: BrandColors.bc1C1939),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.w, right: 22.w, bottom: 15.h),
                child: CustomButton(
                  title: request.mainButtonTitle ?? 'Close',
                  onTap: () => completer(DialogResponse(confirmed: true)),
                ),
              ),
              SizedBox(height: 42.h),
            ],
          )),
    );
  }
}
