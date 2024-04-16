import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/pages/services/user_service.dart';

class MyDatos_Paciente extends StatefulWidget {
  const MyDatos_Paciente({super.key, required this.title});

  final String title;

  @override
  State<MyDatos_Paciente> createState() => _MyDatos_PacienteState();
}

class _MyDatos_PacienteState extends State<MyDatos_Paciente> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Map<String, dynamic>? citaData;

  void _login() {
    // Lógica de autenticación
  }

  @override
  void initState() {
    super.initState();
    // Llama a la función para obtener los pacientes al iniciar la pantalla
    getPacientes();
  }


  Future<void> getPacientes() async {
    try {
      // Realiza una solicitud GET al servidor backend
      final response = await http.get(Uri.parse('http://192.168.208.60:4000/info'));


      if (response.statusCode == 200) {
        // Si la solicitud fue exitosa, procesa los datos de los pacientes
        setState(() {
          pacientes = List<Map<String, dynamic>>.from(json.decode(response.body));
        });
      } else {
        // Si hubo un error en la solicitud, muestra un mensaje de error
        print('Error al obtener los pacientes: ${response.statusCode}');

      }
    } catch (error) {
      print('Error al obtener los pacientes: $error');
    }
  }

  List<Map<String, dynamic>> pacientes = [];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 222*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -30 * fem,
                        top: -50 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 400 * fem,
                            height: 221.64 * fem,
                            child: Image.asset(
                              'assets/rectangle-47-2qt.png',
                              width: 601.25 * fem,
                              height: 21.64 * fem,
                            ),
                          ),
                        ),
                      ),


                      Positioned(
                        left: 265*fem,
                        top: 5*fem,
                        child: Align(
                          child: SizedBox(
                            width: 95*fem,
                            height: 102*fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20*fem),
                              child: Image.asset(
                                'assets/image-12-3RQ.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(28*fem, 0*fem, 28*fem, 249*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                        width: double.infinity,
                        height: 214*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0x7f55d9d9)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 299*fem,
                                  height: 299*fem,
                                  child: Container(
                                    decoration: const BoxDecoration (
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 103 * fem,
                              top: 99 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 105 * fem,
                                  height: 99 * fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Edad:',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.21 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(height: 5 * fem), // Espacio entre los datos
                                      Text(
                                        pacientes.isNotEmpty ? pacientes[0]['edad'].toString() : 'N/A',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.21 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),

                                      SizedBox(height: 5 * fem), // Espacio entre los datos
                                      Text(
                                        'Medicamentos:',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.21 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(height: 5 * fem), // Espacio entre los datos
                                      Text(
                                        pacientes.isNotEmpty ? pacientes[0]['medicamentos'] : 'N/A',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.21 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff5b7ad9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          minimumSize: Size(double.infinity, 47 * fem),
                        ),
                        child: Text(
                          'Cancelar',
                          style: GoogleFonts.libreFranklin(
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.21 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}