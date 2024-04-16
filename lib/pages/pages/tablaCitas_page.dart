import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/pages/informacion_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TablaCitas extends StatefulWidget {
  const TablaCitas({super.key, required this.title});

  final String title;

  @override
  State<TablaCitas> createState() => _TablaCitasState();
}

class _TablaCitasState extends State<TablaCitas> {
  List<Map<String, dynamic>> pacientes = [];
  late String userId;
  @override
  void initState() {

    super.initState();
    getPacientes();
   // userId = "1";
    // Aquí puedes inicializar userId si es necesario
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
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(0.0),
        // child: SizedBox(
        //     width: double.infinity,
        //     child: TextButton(
        //       // tabladecitasDjU (168:222)
        //       onPressed: () {},
        //       style: TextButton.styleFrom (
        //         padding: EdgeInsets.zero,
        //       ),
        //       child: Container(
        //         width: double.infinity,
        //         decoration: const BoxDecoration (
        //           color: Color(0xffffffff),
        //         ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // autogroupnf4aYFx (QxAfo7MCNFESUYrXu2Nf4A)
                      width: 900,
                      height: 150.33*fem,
                      child: Stack(
                        children: [

                      Positioned(
                        left: -30 * fem,
                        top: -70 * fem,
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
                              // image23ytz (169:277)
                              left: 275*fem,
                              top: 10*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 95*fem,
                                  height: 102*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20*fem),
                                    child: Image.asset(
                                      'assets/image-23.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          
                      




                              ],
                            ),
                      
                          ),
                    Container (
                        width:500, // Ancho del Container
                        height: 700, // Alto del Container
                         // Color de fondo del Container
                        child: Center(
                          child: ListView.builder(
                            itemCount: pacientes.length,
                            itemBuilder: (context, index) {
                              final paciente = pacientes[index];
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 9,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 27 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff5b7ad9),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10 * fem),
                                          topRight: Radius.circular(10 * fem),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 104 * fem,
                                      padding: EdgeInsets.symmetric(vertical: 10.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10 * fem),
                                          bottomLeft: Radius.circular(10 * fem),
                                        ),
                                      ),
                                      child: ListTile(
                                        title: Text(
                                          '${paciente['nombre']} ${paciente['apellido']}',


                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18 * ffem,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Contraseña: ${paciente['correo']}',
                                          style: TextStyle(
                                            fontSize: 14 * ffem,
                                          ),
                                        ),
                                        onTap: () {

                                          // Aquí puedes manejar la acción cuando se toca un paciente en la lista
                                          int userId = paciente['id_paciente'];
                                          String nombre =  paciente['nombre'];
                                          String apellido = paciente['apellido'];
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Informacion(title: '', userId: userId, nombre: nombre, apellido: apellido,)),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ),


                ),

              //),

                        ],
                      ),
                    ),
                  //],
              //   ),
              // ),
            ),
    );


        //)

   // );
  }
}