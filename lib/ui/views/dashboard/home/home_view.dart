// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/home/home_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(HomeViewModel viewModel) {}

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder: (context, parentModel) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: Utils.lightWhiteNav,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 500.h,
                    child: Image.asset(
                      'm2'.jpg,
                      fit: BoxFit.fitWidth,
                      color: kDarkColor.withOpacity(0.5),
                      colorBlendMode: BlendMode.srcOver,
                    ),
                  ),
                  Positioned(
                    top: 250.h,
                    left: 20.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, I am',
                          style: BrandTextStyles.bold.copyWith(
                              fontSize: 20.sp, color: const Color(0XFFFF9342)),
                        ),
                        Text(
                          'Olatunji Michael',
                          style: BrandTextStyles.bold
                              .copyWith(fontSize: 26.sp, color: Colors.black),
                        ),
                        Text(
                          'Mobile Developer',
                          style: BrandTextStyles.bold
                              .copyWith(fontSize: 20.sp, color: Colors.black),
                        ),
                        SizedBox(height: 10.h),
                        InkWell(
                          onTap: () {
                            launch(viewModel
                                    .githubRepoResponse?.first.owner.htmlUrl ??
                                '');
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'github'.png,
                                height: 20,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                viewModel.githubRepoResponse?.first.owner.login
                                        .name
                                        .toLowerCase() ??
                                    '',
                                style: BrandTextStyles.medium.copyWith(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 420.h,
                    left: 20.w,
                    child: SizedBox(
                        width: 150,
                        height: 40,
                        child: CustomButton(
                          onTap: () {
                            launch(
                                'https://drive.google.com/file/d/13TRXszhtfUg6IR-ZIan7dFmhiMSIFZUC/view?usp=sharing');
                          },
                          backgroundColor: kPrimaryColor,
                          title: 'Donwload CV',
                          padding: EdgeInsets.zero,
                        )),
                  ),
                  Positioned(
                    top: 420.h,
                    left: 200.w,
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: CustomButton(
                        onTap: () {
                          launch('mailto:mikeeolar@gmail.com');
                        },
                        title: 'Contact Me',
                        backgroundColor: kPrimaryColor,
                        filled: false,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 180.h,
                              height: 300.h,
                              color: const Color(0xFFEAEEF4),
                              child: Image.asset(
                                'm1'.png,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'About Me',
                                    style: BrandTextStyles.bold.copyWith(
                                        fontSize: 26.sp, color: Colors.black),
                                  ),
                                  Text(
                                    'I\'m a software engineer based in Lagos, Nigeria specialized in building and delivering exceptional mobile applications, and everything in between.',
                                    style: BrandTextStyles.regular.copyWith(
                                        fontSize: 16.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: kPrimaryColor,
                                        size: 20.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'mikeeolar@gmail.com',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 12.sp,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: kPrimaryColor,
                                        size: 20.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        '08149351037',
                                        style: BrandTextStyles.regular.copyWith(
                                            fontSize: 12.sp,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
