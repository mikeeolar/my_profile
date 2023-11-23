import 'package:my_portfolio/core/data_source/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:my_portfolio/core/models/guthub_resp_response.dart';
import 'package:my_portfolio/core/services/auth_service.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class LoginViewModel extends IndexTrackingViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();
  final AuthService _authService = locator<AuthService>();

  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  final AuthRemoteDataSource _authRemoteDataSource =
      locator<AuthRemoteDataSource>();

  List<GithubRepoResponse>? get githubRepoResponse =>
      _authService.githubRepoResponse;

  bool _obscurePassword = true;
  bool get obscurePassword => _obscurePassword;
  set obscurePassword(bool val) {
    _obscurePassword = val;
    notifyListeners();
  }

  void guestLogin() {
    usernameCtrl.text = 'guest01';
    passwordCtrl.text = 'guest01';
  }

  Future login() async {
    if (usernameCtrl.text != 'guest01' && passwordCtrl.text != 'guest01') {
      flusher('Invalid login details\nUse the guest login!', color: Colors.red);
      return;
    }

    _dialogService.showCustomDialog(
      variant: DialogType.loader,
      barrierColor: Colors.black.withOpacity(0.5),
      title: 'Please wait...',
    );

    final data = await _authRemoteDataSource.getGithubRepo();

    data.fold((l) {
      _dialogService.completeDialog(DialogResponse());
      flusher(l.message, color: Colors.red);
    }, (r) {
      _dialogService.completeDialog(DialogResponse());
      _authService.authenticationResponse = r;
      navigateToDashboard();
    });
  }

  void navigateToDashboard() {
    _navigationService.navigateTo(Routes.dashboard);
  }
}
