abstract class SessionStorage {
  Future<void> set(String key, Map<String, dynamic> data);

  Future<Map<String, dynamic>> get(String key);

  Future<void> clearData();
}
