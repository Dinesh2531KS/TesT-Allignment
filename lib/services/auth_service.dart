import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  // Replace with your actual mock server's base URL
  static const String baseUrl = 'https://documenter.getpostman.com/view/38199901/2sB34Zpiy9#intro';

  final Map<String, String> _headers = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<Map<String, dynamic>> registerUser(String email, String password) async {
    final uri = Uri.parse('$baseUrl/register');
    final res = await http.post(uri, headers: _headers, body: jsonEncode({'email': email, 'password': password}));
    return _processResponse(res);
  }

  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    final uri = Uri.parse('$baseUrl/login');
    final res = await http.post(uri, headers: _headers, body: jsonEncode({'email': email, 'password': password}));
    return _processResponse(res);
  }

  /// Triggers WhatsApp verification (mock)
  Future<Map<String, dynamic>> verifyWhatsAppNumber(String phone) async {
    final uri = Uri.parse('$baseUrl/whatsapp/verify');
    final res = await http.post(uri, headers: _headers, body: jsonEncode({'phone': phone}));
    return _processResponse(res);
  }

  Map<String, dynamic> _processResponse(http.Response res) {
    final body = res.body.isNotEmpty ? jsonDecode(res.body) : null;
    if (res.statusCode >= 200 && res.statusCode < 300) {
      return body as Map<String, dynamic>;
    } else {
      throw Exception(body?['message'] ?? 'Error: ${res.statusCode}');
    }
  }
}
