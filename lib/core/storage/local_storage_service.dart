abstract class LocalStorageService {
  Future<dynamic> save(String key, dynamic value);
  Future<dynamic> delete(String key);
  Future<dynamic> get(String key);

  Future<dynamic> initBox();
}
