// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/about/about_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StackedView<AboutViewModel> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AboutViewModel viewModel, Widget? child) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder: (context, parentModel) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: Utils.darkWhiteNav,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: kPrimaryColor,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: Image.asset(
                            'm7'.png,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olatunji Michael',
                              style: BrandTextStyles.bold.copyWith(
                                fontSize: 24.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Mobile  Developer',
                              style: BrandTextStyles.medium.copyWith(
                                fontSize: 20.sp,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Hey there! I\'m Michael also go by mikeeolar, a software engenieer based in Lagos Nigeria.\n\nI enjoy creating and designing beautiful and high performance mobile applications and everything in between. My Goal is to create high performing and efficient applications that enhance user experience.\n\n',
                                  style: BrandTextStyles.regular.copyWith(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                                TextSpan(
                                  text: 'I\'m a graduate of ',
                                  style: BrandTextStyles.regular.copyWith(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                                TextSpan(
                                  text: 'Yaba College of Technology,',
                                  style: BrandTextStyles.bold.copyWith(
                                      color: Colors.black, fontSize: 15.sp),
                                ),
                                TextSpan(
                                  text:
                                      ' and I have over 5 years of experience developing efficient and scalable mobile applications. I currently work with ',
                                  style: BrandTextStyles.regular.copyWith(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                                TextSpan(
                                  text: 'Advansio ',
                                  style: BrandTextStyles.bold.copyWith(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                                TextSpan(
                                  text:
                                      'as a Mobile Developer.\n\nHere are a few technologies I\'m familiar with:',
                                  style: BrandTextStyles.regular.copyWith(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Flutter',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Javascript',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'React',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'NodeJs',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'HTML & CSS',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Angular',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'PHP (Laravel)',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Android (Java & Kotlin)',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 15.sp,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            'Certificate -',
                            style: BrandTextStyles.bold
                                .copyWith(fontSize: 24.sp, color: Colors.black),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: const Icon(
                                  Icons.circle,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ADSE - Advanced Diploma in Software Engineering',
                                      style: BrandTextStyles.medium.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'Location - Ikeja',
                                      style: BrandTextStyles.regular.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            'Achievments & Awards -',
                            style: BrandTextStyles.bold
                                .copyWith(fontSize: 24.sp, color: Colors.black),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: const Icon(
                                  Icons.circle,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'NACOS President',
                                      style: BrandTextStyles.medium.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'Nigeria Association of Computing students',
                                      style: BrandTextStyles.regular.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'Yabatech chapter',
                                      style: BrandTextStyles.regular.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: const Icon(
                                  Icons.circle,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Best Programmer Award',
                                      style: BrandTextStyles.medium.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'Nigeria Association of Computing students',
                                      style: BrandTextStyles.regular.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'Yabatech chapter',
                                      style: BrandTextStyles.regular.copyWith(
                                          fontSize: 18.sp, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50.h),
                          Center(
                            child: Text(
                              'Get in Touch',
                              style: BrandTextStyles.bold.copyWith(
                                  fontSize: 20.sp, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Center(
                            child: Text(
                              'Lets Build Something\nTogether',
                              textAlign: TextAlign.center,
                              style: BrandTextStyles.bold.copyWith(
                                  fontSize: 20.sp, color: kPrimaryColor),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Center(
                            child: Text(
                              'I\'m currently fully open to new opputunities and offers. Send me a message and let\'s build something great together!',
                              textAlign: TextAlign.center,
                              style: BrandTextStyles.regular.copyWith(
                                  fontSize: 16.sp, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          Center(
                            child: SizedBox(
                                width: 200.w,
                                height: 50.h,
                                child: CustomButton(
                                  onTap: () {
                                    launch('mailto:mikeeolar@gmail.com');
                                  },
                                  title: 'Send a message',
                                  filled: false,
                                  textColor: Colors.black,
                                  backgroundColor: kPrimaryColor,
                                  padding: EdgeInsets.zero,
                                )),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  AboutViewModel viewModelBuilder(BuildContext context) => AboutViewModel();
}
