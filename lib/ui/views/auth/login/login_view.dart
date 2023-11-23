import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/auth/login/login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    final FocusNode node = FocusScope.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.darkWhiteNav,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                Gap(20.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Gap(20.h),
                          CustomText(
                            text: 'Hi there!',
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w700,
                            color: kDarkColor,
                          ),
                          Gap(5.h),
                          const CustomText(
                            text: 'Log in to access my portfolio',
                            fontSize: 16,
                            color: kTextColor,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 60.h),
                          GestureDetector(
                            onTap: () => viewModel.guestLogin(),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 8.h),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEBEBEB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              child: Text(
                                'Guest Login',
                                style: BrandTextStyles.medium.copyWith(
                                    fontSize: 16.sp, color: kDarkColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextField(
                            inputType: TextInputType.text,
                            hintText: 'Username',
                            controller: viewModel.usernameCtrl,
                          ),
                          SizedBox(height: 15.h),
                          CustomTextField(
                            inputType: TextInputType.text,
                            hintText: 'Password',
                            type: TextFieldType.password,
                            enableInteractiveSelection: false,
                            suffixFunc: () => viewModel.obscurePassword =
                                !viewModel.obscurePassword,
                            obscure: viewModel.obscurePassword,
                            controller: viewModel.passwordCtrl,
                          ),
                          SizedBox(height: 40.h),
                          CustomButton(
                            onTap: () {
                              node.unfocus();
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                viewModel.login();
                              }
                            },
                            title: 'Login',
                            backgroundColor: kPrimaryColor,
                          )
                        ],
                      ),
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
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
