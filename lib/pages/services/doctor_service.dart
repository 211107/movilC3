import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class DoctorService {
  Future<String> createDoctor(
      String username, String lastname, String cedula, String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.13:4000/doctor'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': username,
        'apellido': lastname,
        'cedula_profesional': cedula,
        'correo': email,
        'contrasena': password
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body);
    print(body);
    if (response.statusCode == 200) {
      final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      sharedPreferences.setString('user', jsonEncode(body));
      sharedPreferences.setString('id', jsonEncode(body['id']));
      return '200';
    } else {
      return 'Error al crear usuario: ${body['message']}'; // Mensaje de error
    }
  }

}