import 'package:hive/hive.dart';
import 'package:my_portfolio/app/locator.dart';
import 'package:my_portfolio/core/utils/hive_boxes.dart';

class StorageService {
  final _hiveService = locator<HiveInterface>();
  
  bool get _isBoolBoxOpen => _hiveService.isBoxOpen(HiveBox.bools);
  Box<bool> get _boolBox => _hiveService.box<bool>(HiveBox.bools);

  bool get _isStringBoxOpen => _hiveService.isBoxOpen(HiveBox.strings);
  Box<String> get _stringsBox => _hiveService.box<String>(HiveBox.strings);

  bool get _isIntBoxOpen => _hiveService.isBoxOpen(HiveBox.ints);
  Box<int> get _intsBox => _hiveService.box<int>(HiveBox.ints);
  
  Future<void> init() async {
    // _hiveService.registerAdapter(UserAdapter());

    if (!_isBoolBoxOpen) {
      await _hiveService.openBox<bool>(HiveBox.bools);
    }
    if (!_isStringBoxOpen) {
      await _hiveService.openBox<String>(HiveBox.strings);
    }
    if (!_isIntBoxOpen) {
      await _hiveService.openBox<int>(HiveBox.ints);
    }
  }

  void addString(String key, String value) {
    _stringsBox.put(key, value);
  }


  String? getString(String key) {
    return _stringsBox.get(key);
  }

  void removeString(String key) {
    _stringsBox.delete(key);
  }

  int? getInt(String key) {
    return _intsBox.get(key);
  }

  void addInt(String key, int value) {
    _intsBox.put(key, value);
  }

  void removeInt(String key) {
    _intsBox.delete(key);
  }

  void addBool(String key, bool value) {
    _boolBox.put(key, value);
  }

  bool? getBool(String key) {
    return _boolBox.get(key);
  }

  void removeBool(String key) {
    _boolBox.delete(key);
  }

}