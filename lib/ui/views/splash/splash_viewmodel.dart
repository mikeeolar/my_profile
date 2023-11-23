import 'package:my_portfolio/core/models/user/user.dart';
import 'package:my_portfolio/core/services/user_service.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class SplashViewModel extends BaseViewModel {
  final UserService _userService = locator<UserService>();
  User? get user => _userService.user;

  void setup() {
    _userService.getUser();
  }
}
