// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';

class LogoutConfirmationDialog extends StatelessWidget {
  final VoidCallback onLogout;

  const LogoutConfirmationDialog({
    Key? key,
    required this.onLogout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
          margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Are you sure you want to log out?',
                style: BrandTextStyles.medium
                    .copyWith(color: BrandColors.bc1C1939, fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8.r),
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 14.h, horizontal: 20.w),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: BrandColors.primary),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Center(
                            child: Text(
                              'No',
                              style: BrandTextStyles.semiBold.copyWith(
                                  color: BrandColors.primary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8.r),
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).pop();
                        onLogout();
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
                          width: double.infinity,
                         decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: BrandColors.primary),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Center(
                            child: Text(
                              'Yes',
                              style: BrandTextStyles.semiBold.copyWith(
                                  color: BrandColors.primary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
