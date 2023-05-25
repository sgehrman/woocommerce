import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalDatabaseService {
  final securityToken = const FlutterSecureStorage();

  Future<void> updateSecurityToken(String? token) async {
    await securityToken.write(key: 'token', value: token);
  }

  Future<void> deleteSecurityToken() async {
    await securityToken.delete(key: 'token');
  }

  Future<String> getSecurityToken() async {
    final String? token = await securityToken.read(key: 'token');

    return token ?? '0';
  }
}
