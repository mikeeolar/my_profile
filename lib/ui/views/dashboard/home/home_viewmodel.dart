import 'package:my_portfolio/core/models/guthub_resp_response.dart';
import 'package:my_portfolio/core/services/auth_service.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class HomeViewModel extends BaseViewModel {

  final AuthService _authService = locator<AuthService>();
  List<GithubRepoResponse>? get githubRepoResponse =>
      _authService.githubRepoResponse;
}
