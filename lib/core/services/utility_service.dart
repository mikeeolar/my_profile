import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class UtilityService with ListenableServiceMixin {
  // final StorageService _storageService = locator<StorageService>();

  // final DialogService _dialogService = locator<DialogService>();

  bool _signedIn = false;
  bool get signedIn => _signedIn;

  bool _showNav = false;
  bool get showNav => _showNav;

  List<Articles>? _articles;
  List<Articles>? get articles => _articles;
  set articles(List<Articles>? val) {
    _articles = val;
    notifyListeners();
  }

  int index = 0;

  UtilityService() {
    listenToReactiveValues([
      _signedIn,
      _showNav,
      index,
      _articles,
    ]);
  }

  void setIndex(int val) {
    index = val;
    notifyListeners();
  }

  void setSignedIn(bool val) {
    _signedIn = val;
    notifyListeners();
  }

  void setShowNav(bool val) {
    _showNav = val;
    notifyListeners();
  }
}
