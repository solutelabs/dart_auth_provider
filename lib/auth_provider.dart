library auth_provider;

import 'package:auth_provider/session_storage_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

export 'abstract_auth_provider.dart';
export 'session_storage.dart';

final defaultSessionStorage = SecureStorage(storage: FlutterSecureStorage());
