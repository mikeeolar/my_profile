import 'package:my_portfolio/core/models/guthub_resp_response.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class AuthService with ListenableServiceMixin {

  List<GithubRepoResponse>? _githubRepoResponse;
  List<GithubRepoResponse>? get githubRepoResponse => _githubRepoResponse;
  set authenticationResponse(List<GithubRepoResponse>? val) {
    _githubRepoResponse = val;
    notifyListeners();
  }

  AuthService() {
    listenToReactiveValues([_githubRepoResponse]);
  }
}
