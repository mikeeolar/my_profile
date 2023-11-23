// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/blog/blog_view.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/about/about_view.dart';
import 'package:my_portfolio/ui/views/dashboard/experience/experience_view.dart';
import 'package:my_portfolio/ui/views/dashboard/home/home_view.dart';
import 'package:my_portfolio/ui/views/dashboard/projects/projects_view.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  void openMenu() {}

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.lightdarkNav,
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Material(
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.white,
                body: [
                  const HomeView(),
                  const ExperienceView(),
                  const ProjectsView(),
                  const BlogView(),
                  const AboutView(),
                ].elementAt(viewModel.currentIndex),
                bottomNavigationBar: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x14152542),
                        blurRadius: 8,
                        offset: Offset(0, -4),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x05152542),
                        blurRadius: 2,
                        offset: Offset(0, -1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    selectedLabelStyle: BrandTextStyles.medium
                        .copyWith(fontSize: 13.sp, color: BrandColors.bc001A54),
                    unselectedLabelStyle: BrandTextStyles.medium
                        .copyWith(fontSize: 13.sp, color: BrandColors.bcB6B6C6),
                    selectedItemColor: BrandColors.primary,
                    unselectedItemColor: BrandColors.bcB6B6C6,
                    elevation: 0,
                    onTap: viewModel.setIndex,
                    currentIndex: viewModel.currentIndex,
                    items: <BottomNavigationBarItem>[
                      bottomBarItem(
                          context: context,
                          name: 'Home',
                          iconPath: 'home'.png,
                          activeIconPath: 'home'.png,
                          semanticlabel: 'Home',
                          activeSemanticLabel: 'Home Navigator is Active',
                          active: viewModel.currentIndex == 0),
                      bottomBarItem(
                          context: context,
                          name: 'Experience',
                          iconPath: 'certificate'.png,
                          activeIconPath: 'certificate'.png,
                          semanticlabel: 'Experience',
                          activeSemanticLabel:
                              'Experience Navigator is Active',
                          active: viewModel.currentIndex == 1),
                      bottomBarItem(
                          context: context,
                          name: 'Projects',
                          iconPath: 'working-hours'.png,
                          activeIconPath: 'working-hours'.png,
                          semanticlabel: 'Projects',
                          activeSemanticLabel: 'Projects Navigator is Active',
                          active: viewModel.currentIndex == 2),
                       bottomBarItem(
                          context: context,
                          name: 'Blog',
                          iconPath: 'blog'.png,
                          activeIconPath: 'blog'.png,
                          semanticlabel: 'Blog',
                          activeSemanticLabel: 'Blog Navigator is Active',
                          active: viewModel.currentIndex == 3),
                      bottomBarItem(
                          context: context,
                          name: 'About Me',
                          iconPath: 'account'.png,
                          activeIconPath: 'account'.png,
                          semanticlabel: 'Account',
                          activeSemanticLabel: 'Account Navigator is Active',
                          active: viewModel.currentIndex == 4),
                    ],
                  ),
                ),
              ),
              IgnorePointer(
                ignoring: true,
                child: AnimatedContainer(
                  duration: 300.milliseconds,
                  width: double.infinity,
                  height: double.infinity,
                  color: viewModel.showMenu
                      ? Colors.black.withOpacity(.5)
                      : Colors.transparent,
                ),
              ),
              // AnimatedPositioned(
              //   duration: 300.milliseconds,
              //   bottom: viewModel.showMenu ? 0 : -847.h,
              //   left: 0,
              //   right: 0,
              //   child: Menu()
              // )
            ],
          ),
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) => DashboardViewModel();

  BottomNavigationBarItem bottomBarItem(
      {required BuildContext context,
      required String name,
      required String iconPath,
      required String activeIconPath,
      double? height,
      required String semanticlabel,
      required String activeSemanticLabel,
      required bool active}) {
    return BottomNavigationBarItem(
      label: name,
      icon: Image.asset(
        iconPath,
        height: height ?? 25.h,
        width: 25.h,
        color: const Color(0xFF8B8B8B),
        fit: BoxFit.fill,
      ),
      activeIcon: Column(
        children: [
          Image.asset(activeIconPath,
              height: height ?? 25.h,
              width: 25.h,
              color: BrandColors.primary,),
              Gap(5.h),
          Container(
            width: 10,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: BrandColors.primary,
            ),
          ),
          Gap(2.h),
        ],
      ),
    );
  }
}
