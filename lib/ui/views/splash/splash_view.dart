import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/auth/login/login_view.dart';
import 'package:my_portfolio/ui/views/splash/splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    super.onViewModelReady(viewModel);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.setup();
      Future.delayed(
          2.seconds,
          () => locator<NavigationService>().navigateWithTransition(
              const LoginView(),
              transitionStyle: Transition.downToUp,
              duration: const Duration(milliseconds: 1000)));
    });
  }

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/m1.jpg',
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();
}
