import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  Future<String> createUser(
      String username, String lastname, String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.13:4000/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': username,
        'apellido': lastname,
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

  Future<String> createPaciente(int edad, String tipoSangre,
      String enfermedades, String alergias, String medicamentos) async {
    final SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    String? data = sharedPreferences.getString('id'); //como se obtiene id
    int? id;
    id = int.tryParse(data!);

    final response = await http.post(
      Uri.parse('http://192.168.1.13:4000/paciente'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'id_usuario_registro': id,
        'edad': edad,
        'tipo_sangre': tipoSangre,
        'enfermedades': enfermedades,
        'alergias': alergias,
        'medicamentos': medicamentos,
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      sharedPreferences.setString('datos', jsonEncode(body));
      return '200';
    } else {
      return 'Error al crear paciente: ${body['message']}'; // Mensaje de error
    }


  }
  Future<Map<String, dynamic>> getPacienteById(int id) async {
    final response = await http.get(
      Uri.parse('http://192.168.1.13:4000/paciente/:id'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al obtener paciente por ID');
    }
  }

  Future<String> updateUser(int edad, String tipoSangre, String enfermedades, String alergias, String medicamentos) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? data = sharedPreferences.getString('id');
    int? id = int.tryParse(data!);

    final response = await http.put(
      Uri.parse('http://192.168.1.13:4000/1'), // Reemplaza la URL con la ruta correcta para actualizar un usuario
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'edad': edad,
        'tipo_sangre': tipoSangre,
        'enfermedades': enfermedades,
        'alergias': alergias,
        'medicamentos': medicamentos,
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Actualización exitosa
      return '200';
    } else {
      // Manejar error de actualización
      return 'Error al actualizar usuario: ${body['message']}';
    }
  }

  Future<String> deleteUser(int userId) async {
    final SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    String? id = sharedPreferences.getString('id');
    int? idUsuario = int.tryParse(id!);

    final response = await http.delete(
      Uri.parse('http://192.168.1.13:4000/4'), // Cambia la URL según tu endpoint de eliminación
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'id_usuario_elimina': idUsuario,
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return '200';
    } else {
      return 'Error al eliminar usuario: ${body['message']}';
    }
  }






}