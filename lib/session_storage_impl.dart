import 'dart:convert';

import 'package:auth_provider/session_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage extends SessionStorage {
  final FlutterSecureStorage storage;

  SecureStorage({@required this.storage});

  @override
  Future<void> clearData() {
    return storage.deleteAll();
  }

  @override
  Future<Map<String, dynamic>> get(String key) async {
    final data = await storage.read(key: key);
    return jsonDecode(data);
  }

  @override
  Future<void> set(String key, Map<String, dynamic> data) {
    return storage.write(key: key, value: jsonEncode(data));
  }
}
