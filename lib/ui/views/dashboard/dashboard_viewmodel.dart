import 'package:stacked/stacked.dart';

class DashboardViewModel extends IndexTrackingViewModel {
  bool _showMenu = false;
  bool get showMenu => _showMenu;
  set showMenu(bool val) {
    _showMenu = val;
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [];
}
