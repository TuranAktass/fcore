import 'package:fcore/core/storage/local_storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  late Box _storageBox;

  LocalStorageServiceImpl({required this.boxName});

  final String boxName;

  @override
  Future initBox() async {
    if (!kIsWeb && !Hive.isBoxOpen(boxName)) {
      await Hive.initFlutter();
    }

    return await Hive.openBox(boxName);
  }

  @override
  Future delete(String key) async {
    try {
      _storageBox = await Hive.openBox(boxName);
      return _storageBox.delete(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future get(String key) async {
    _storageBox = await Hive.openBox(boxName);
    return _storageBox.get(key);
  }

  @override
  Future save(String key, dynamic value) async {
    _storageBox = await Hive.openBox(boxName);
    return _storageBox.put(key, value);
  }
}
