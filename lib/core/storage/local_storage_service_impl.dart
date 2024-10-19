import 'package:fcore/core/storage/local_storage_service.dart';
import 'package:hive/hive.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  late Box _storageBox;

  @override
  Future delete(String key) async {
    try {
      _storageBox = await Hive.openBox("gelirim");
      return _storageBox.delete(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future get(String key) async {
    _storageBox = await Hive.openBox("gelirim");
    return _storageBox.get(key);
  }

  @override
  Future save(String key, dynamic value) async {
    _storageBox = await Hive.openBox("gelirim");
    return _storageBox.put(key, value);
  }
}
