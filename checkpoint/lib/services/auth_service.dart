import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  final _storage = const FlutterSecureStorage();
  final String _baseUrl = 'https://fakestoreapi.com/auth/login';

  Future<bool> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode < 300) {
        final data = jsonDecode(response.body);
        final token = data['token'];
        await _storage.write(key: 'auth_token', value: token);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  Future<bool> hasToken() async {
    String? token = await getToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> logout() async {
    await _storage.delete(key: 'auth_token');
  }
}
