import 'dart:convert';
import 'package:http/http.dart' as http;

class Apiservice {
  final String Url = "https://reqres.in/api";

  // LOGIN
  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse("$Url/login"),
      headers: {
        'Content-Type': 'application/json',
        'X-API-Key': 'reqres-free-v1', // ✅ Tambahkan ini untuk bypass error
      },
      body: json.encode({
        "email": email,
        "password": password,
      }),
    );

    print("Status Code: ${response.statusCode}");
    print("Response Body: ${response.body}");

    if (response.statusCode == 200) {
      try {
        final data = json.decode(response.body);
        return data["token"];
      } catch (e) {
        throw Exception("Response bukan JSON valid");
      }
    } else {
      // Debugging info
      print("⚠️ Response status != 200");
      print("⚠️ Header Content-Type: ${response.headers['content-type']}");
      print("⚠️ Response Body (raw): ${response.body}");
      print("⚠️ Request URL: ${response.request?.url}");
      print("⚠️ Request Headers: ${response.request?.headers}");
      print("⚠️ Request Method: ${response.request?.method}");

      try {
        final error = json.decode(response.body);
        throw Exception(error["error"] ?? "Login gagal");
      } catch (e) {
        throw Exception("Response error bukan JSON valid");
      }
    }
  }

  // GET USER PROFILE
Future<Map<String, dynamic>> getUserProfile(int id) async {
  final response = await http.get(
    Uri.parse("$Url/users/$id"),
    headers: {
      'Content-Type': 'application/json',
      'X-API-Key': 'reqres-free-v1', // ✅ WAJIB untuk web
    },
  );

  print("StatusCode: ${response.statusCode}");
  print("Response Body: ${response.body}");

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data["data"];
  } else {
    throw Exception("Gagal mengambil data user");
  }
}

}
