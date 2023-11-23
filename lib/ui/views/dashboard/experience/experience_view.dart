import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/experience/experience_viewmodel.dart';

class ExperienceView extends StackedView<ExperienceViewModel> {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ExperienceViewModel viewModel, Widget? child) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder: (context, parentModel) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: Utils.darkWhiteNav,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Text(
                    'My Experience',
                    style: BrandTextStyles.bold.copyWith(
                      fontSize: 24.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              height: 160.h,
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
                              child: Stack(
                                children: [
                                  Text(
                                    'Mobile Developer',
                                    style: BrandTextStyles.bold.copyWith(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 75.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Advansio Interactive Ltd.',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Yaba, Lagos',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'April 2023 - Present',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              height: 160.h,
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
                              child: Stack(
                                children: [
                                  Text(
                                    'Mobile Developer',
                                    style: BrandTextStyles.bold.copyWith(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 75.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rimotechnology Ltd.',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Ikeja, Lagos',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'July 2021 - March 2023',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              height: 160.h,
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
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Mobile Developer',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        ' - Contract',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 75.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'MYSR (My Social Responsibility)',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Ikeja, Ogba, Lagos',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'March 2021 - June 2021',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              height: 160.h,
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
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Mobile Developer',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        ' - Contract',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 75.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dorecur Inc.',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Otedola Estate, Lagos',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'July 2020 - January 2021',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              height: 220.h,
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
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Web Developer',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        ' - Contract',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 135.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nigeria Aviation\nHandling Company',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          '(NAHCO Aviance)',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 16.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Airport Road',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'May 2020 - August 2021',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              height: 160.h,
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
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Mobile/Web Developer',
                                        style: BrandTextStyles.bold.copyWith(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      padding: EdgeInsets.all(1.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: HexColor('#C4C4C4'),
                                          width: 2,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                          backgroundColor: kPrimaryColor),
                                    ),
                                  ),
                                  Positioned(
                                    top: 55.h,
                                    left: 8.w,
                                    child: Container(
                                      width: 2,
                                      height: 135.h,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 26,
                                    left: 26.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smallville Technologies',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color: Colors.black),
                                        ),
                                        Text(
                                          'Egbeda, Idimu, Lagos',
                                          style: BrandTextStyles.bold.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'July 2018 - August 2020',
                                          style: BrandTextStyles.medium
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      const Color(0xFF3f9631)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
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
  ExperienceViewModel viewModelBuilder(BuildContext context) =>
      ExperienceViewModel();
}
