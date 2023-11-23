// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/projects/projects_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsView extends StackedView<ProjetcsViewModel> {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ProjetcsViewModel viewModel, Widget? child) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder: (context, parentModel) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: Utils.darkWhiteNav,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Text(
                    'Projects',
                    style: BrandTextStyles.bold.copyWith(
                      fontSize: 24.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 200,
                                  width: double.infinity,
                                  child: Image.asset(
                                    'renners'.png,
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(height: 10.h),
                              Text(
                                'Renners',
                                style: BrandTextStyles.semiBold
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://play.google.com/store/apps/details?id=com.bloocode.renners');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/android.png',
                                        height: 25.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on play store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.w),
                              GestureDetector(
                                onTap: () {
                                  launch('https://apps.apple.com/ng/app/renners-quick-instant-loan/id1663549425');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/apple.png',
                                        height: 24.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on app store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'A digital loan application that provides loan services that bring fresh direction and solutions to the Nigerian market.',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Flutter    Dart    Stacked Architecture',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('taj'.png),
                              SizedBox(height: 10.h),
                              Text(
                                'TAJWay',
                                style: BrandTextStyles.semiBold
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://play.google.com/store/apps/details?id=com.taj.taj_mobile');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/android.png',
                                        height: 25.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on play store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.w),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://apps.apple.com/ng/app/tajway/id1608035618');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/apple.png',
                                        height: 24.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on app store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Digital Bank that makes it all possible to do financial transactions from the comfort of your home, your car or anywhere else. Providing convenience and ease with a secured payment platform...',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Flutter    Dart    Stacked Architecture',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        GestureDetector(
                          onTap: () {
                            launch(
                                'https://play.google.com/store/apps/details?id=com.bloombankafrica.mobile');
                          },
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('bloom'.png),
                                SizedBox(height: 10.h),
                                Text(
                                  'Bloom Bank Mobile',
                                  style: BrandTextStyles.semiBold
                                      .copyWith(fontSize: 16.sp, color: Colors.black),
                                ),
                                SizedBox(height: 10.h),
                                GestureDetector(
                                  onTap: () {
                                    launch(
                                        'https://play.google.com/store/apps/details?id=com.bloombankafrica.mobile');
                                  },
                                  child: Container(
                                    width: 200.w,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 10.w),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          side: const BorderSide(
                                              color: kPrimaryColor, width: 1.5)),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/android.png',
                                          height: 25.h,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'View on play store',
                                          style: BrandTextStyles.medium.copyWith(
                                              fontSize: 15.sp, color: kDarkColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.w),
                                GestureDetector(
                                  onTap: () {
                                    launch(
                                        'https://apps.apple.com/ng/app/bloom-bank-mobile/id1629249850');
                                  },
                                  child: Container(
                                    width: 200.w,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.h, horizontal: 10.w),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          side: const BorderSide(
                                              color: kPrimaryColor, width: 1.5)),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/apple.png',
                                          height: 24.h,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'View on app store',
                                          style: BrandTextStyles.medium.copyWith(
                                              fontSize: 15.sp, color: kDarkColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'A Digital Banking Solution for Bloom Bank Africa in Gambia...',
                                  style: BrandTextStyles.regular
                                      .copyWith(fontSize: 16.sp, color: Colors.black),
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  'Flutter    Dart    Stacked Architecture',
                                  style: BrandTextStyles.regular
                                      .copyWith(fontSize: 12.sp, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('kolomoni'.png),
                              SizedBox(height: 10.h),
                              Text(
                                'Kolomoni',
                                style: BrandTextStyles.semiBold
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://play.google.com/store/apps/details?id=com.teqpace.kolomoni');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/android.png',
                                        height: 25.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on play store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://apps.apple.com/ng/app/kolomoni-by-cintrustmfb/id1479338235');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/apple.png',
                                        height: 24.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on app store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'KOLOMONI is a mobile and web application for savings and investments. It provides a secure, fast, and convenient way for an average man to access savings and investment products that are otherwise reserved for the elites....',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Flutter    Dart    Stacked Architecture',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('kolo-ab'.png),
                              SizedBox(height: 10.h),
                              Text(
                                'Kolomoni - Agent Banking',
                                style: BrandTextStyles.semiBold
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://play.google.com/store/apps/details?id=com.teqpace.kolomoni');
                                },
                                child: Container(
                                  width: 200.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 10.w),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: kPrimaryColor, width: 1.5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/android.png',
                                        height: 25.h,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'View on play store',
                                        style: BrandTextStyles.medium.copyWith(
                                            fontSize: 15.sp, color: kDarkColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.w),
                              Text(
                                'The New Kolomoni Agency Banking App provides seamless financial services to everyone, everywhere. Offer a wide range of service to your customers and enjoy fantastic commissions - Cash withdrawal, deposit and fund transfer, airtime recharge and data subscription, utility bill payments and much more...',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 16.sp, color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Java     Encryption    Android Studio',
                                style: BrandTextStyles.regular
                                    .copyWith(fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ProjetcsViewModel viewModelBuilder(BuildContext context) =>
      ProjetcsViewModel();
}
