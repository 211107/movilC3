import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/pages/pages/formulario_page.dart';
import 'package:untitled/pages/pages/formulario_actualizar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/pages/services/user_service.dart';
import 'package:untitled/pages/pages/tablaCitas_page.dart';

class Informacion extends StatefulWidget {
  const Informacion({super.key, required this.title, required this.userId,required this.nombre,required this.apellido });


  final String title;
  final int userId;
  final String nombre;
  final String apellido;

  @override
  State<Informacion> createState() => _InformacionState();
}

class _InformacionState extends State<Informacion> {
  List<Map<String, dynamic>> pacientes = [];
  int get userId => widget.userId;


  @override
  void initState() {
    super.initState();
    // Llama a la función para obtener los pacientes al iniciar la pantalla
    getPacientes();
  }


  Future<void> getPacientes() async {
    try {
      // Realiza una solicitud GET al servidor backend
      final response = await http.get(Uri.parse('http://192.168.208.60:4000/$userId'));
      print(response.statusCode);


      if (response.statusCode == 200) {
        final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
        sharedPreferences.setString('id_usuario',jsonEncode(userId));

        // Si la solicitud fue exitosa, procesa los datos de los pacientes
        setState(() {

          pacientes = List<Map<String, dynamic>>.from(json.decode(response.body));
        });

      } else {
        print(pacientes);
        // Si hubo un error en la solicitud, muestra un mensaje de error
        print('Error al obtener los pacientessss: ${response.statusCode}');

      }
      //print( {pacientes[0]['id_paciente']});

    } catch (error) {
      print('Error al obtener los pacientes: $error');
    }
  }

  void eliminarUsuario() async {
    try {
      UserService userService = UserService();
      String resultado = await userService.deleteUser(userId); // Reemplaza `userId` con el ID del usuario que desea eliminar

      if (resultado == "200") {
        // El usuario se eliminó correctamente
        // Navegar a la página de tablasCitas
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TablaCitas(
                title: ''), // Reemplaza 'OtraPagina' con el nombre de tu página de destino
          ),
        );
      } else {
        // Manejar el error si la eliminación no fue exitosa
      }
    } catch (e) {
      // Manejar cualquier error que pueda ocurrir durante el proceso de eliminación
      print('Error al eliminar usuario: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // informacinqGr (169:379)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              // autogroupygqk9oL (QxAi1syy5gMokpFw8Dygqk)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
              width: double.infinity,
              height: 607*fem,
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
                    // image23Gut (169:395)
                    left: 261*fem,
                    top: 36*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 87*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20*fem),
                          child: Image.asset(
                            'assets/image-23-oNN.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle19afg (208:100)
                    left: 21*fem,
                    top: 122*fem,
                    child: Align(
                      child: SizedBox(
                        width: 319*fem,
                        height: 385*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: const Color(0xffdddddd)),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // tablaregistroGHc (208:101)
                    left: 32*fem,
                    top: 141.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 112*fem,
                        height: 22*fem,
                        child: Text(
                          'Tabla registro',
                          style: GoogleFonts.roboto(
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorZXc (208:102)
                    left: 32*fem,
                    top: 211.9853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 21*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/vector-zuL.png',
                          width: 21*fem,
                          height: 16*fem,
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   // vector4jG (208:103)
                  //   left: 298*fem,
                  //   top: 152*fem,
                  //   child: Align(
                  //     child: SizedBox(
                  //       width: 7*fem,
                  //       height: 5*fem,
                  //       child: Image.asset(
                  //         'assets/vector-3NW.png',
                  //         width: 7*fem,
                  //         height: 5*fem,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    // nombrenQN (208:104)
                    left: 58*fem,
                    top: 212.4853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 15*fem,
                        child: Text(
                          'Nombre',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 221 * fem,
                    top: 212 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 48 * fem,
                        height: 15 * fem,
                        child: Text(
                          widget.nombre ,   // Mostrar el nombre del primer paciente si la lista no está vacía
                          style: GoogleFonts.inter(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),


                  Positioned(
                    // vectornog (208:106)
                    left: 32*fem,
                    top: 382.9853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 21*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/vector.png',
                          width: 21*fem,
                          height: 16*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // nombreiSS (208:107)
                    left: 58*fem,
                    top: 383.4853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 15*fem,
                        child: Text(
                          'Nombre',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // nombrecleinteDPC (208:108)
                    left: 193*fem,
                    top: 384.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 80*fem,
                        height: 15*fem,
                        child: Text(
                          widget.nombre ,
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // jimnezmoralesKSE (208:109)
                    left: 218*fem,
                    top: 239*fem,
                    child: Align(
                      child: SizedBox(
                        width: 100*fem,
                        height: 15*fem,
                        child: Text(
                          widget.apellido ,
                          style: GoogleFonts.inter(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // Pwt (208:110)
                    left: 254*fem,
                    top: 263.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 14*fem,
                        height: 15*fem,
                        child: Text(
                          pacientes.isNotEmpty && pacientes[0].containsKey('edad')
                              ? pacientes[0]['edad'].toString()
                              : 'N/A',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // atdk (208:127)
                    left: 254*fem,
                    top: 288.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 15*fem,
                        height: 15*fem,
                        child: Text(
                          pacientes.isNotEmpty ? pacientes[0]['tipo_sangre'] ?? 'N/A' : 'N/A',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // apellidoy9Q (208:111)
                    left: 58*fem,
                    top: 238.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 45*fem,
                        height: 15*fem,
                        child: Text(
                          'Apellido',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // edadU6A (208:112)
                    left: 58*fem,
                    top: 263.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 27*fem,
                        height: 15*fem,
                        child: Text(
                          'Edad',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // tipodesangreNxE (208:113)
                    left: 58*fem,
                    top: 289.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 15*fem,
                        child: Text(
                          'Tipo de sangre',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ningunaH3c (208:131)
                    left: 223*fem,
                    top: 313.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 45*fem,
                        height: 15*fem,
                        child: Text(
                          pacientes.isNotEmpty ? pacientes[0]['enfermedades'] ?? 'N/A' : 'N/A',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // enfermedadnWA (208:132)
                    left: 57*fem,
                    top: 315.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66*fem,
                        height: 15*fem,
                        child: Text(
                          'Enfermedad',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ninguna6Wr (208:133)
                    left: 224*fem,
                    top: 336.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 45*fem,
                        height: 15*fem,
                        child: Text(
                          'Ninguna',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // medicamentospBx (208:134)
                    left: 58*fem,
                    top: 338.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 15*fem,
                        child: Text(
                          pacientes.isNotEmpty ? pacientes[0]['medicamentos'] ?? 'N/A' : 'N/A',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line7hFk (208:117)
                    left: 32*fem,
                    top: 365.000037422*fem,
                    child: Align(
                      child: SizedBox(
                        width: 285*fem,
                        height: 0.4*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xffa6a6a6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line10pLN (208:118)
                    left: 32*fem,
                    top: 426.000037572*fem,
                    child: Align(
                      child: SizedBox(
                        width: 285*fem,
                        height: 0.4*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xffa6a6a6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorWyt (208:119)
                    left: 32*fem,
                    top: 445.9853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 21*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/vector-sU2.png',
                          width: 21*fem,
                          height: 16*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // nombreS6r (208:120)
                    left: 58*fem,
                    top: 446.4853515625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 15*fem,
                        child: Text(
                          'Nombre',
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // nombrecleintew3c (208:121)
                    left: 193*fem,
                    top: 447.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 82*fem,
                        height: 15*fem,
                        child: Text(
                          widget.nombre ,
                          style: GoogleFonts.roboto(
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: double.infinity,
                  //   child: Stack(
                  //     children: [
                  //       Positioned(
                  //         left: 233 * fem,
                  //         top: 137 * fem,
                  //         child: SizedBox(
                  //           width: 84 * fem,
                  //           height: 31 * fem,
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(6 * fem),
                  //               border: Border.all(color: Color(0xff000000)),
                  //             ),
                  //             child: Material(
                  //               child: DropdownButton<String>(
                  //                 items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
                  //                   return DropdownMenuItem<String>(
                  //                     value: value,
                  //                     child: Text(value),
                  //                   );
                  //                 }).toList(),
                  //                 onChanged: (String? newValue) {
                  //                   // Acción a realizar cuando se selecciona una opción del menú desplegable
                  //                 },
                  //                 style: GoogleFonts.roboto(
                  //                   fontSize: 12 * ffem,
                  //                   fontWeight: FontWeight.w400,
                  //                   height: 1.1725 * ffem / fem,
                  //                   color: Color(0xff616161),
                  //                 ),
                  //                 underline: Container(),
                  //                 hint: Text(
                  //                   'Status',
                  //                   style: GoogleFonts.roboto(
                  //                     fontSize: 13 * ffem,
                  //                     fontWeight: FontWeight.w400,
                  //                     height: 1.1725 * ffem / fem,
                  //                     color: Color(0xff616161),
                  //                   ),
                  //                 ),
                  //                 icon: Icon(Icons.arrow_drop_down),
                  //                 iconSize: 24 * ffem,
                  //                 isExpanded: true,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),








                ],
              ),
            ),
            SizedBox(
              // autogroupxsyr6j8 (QxAigwhDAtty2SbT6QxsYr)
              width: double.infinity,
              height: 392.27*fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: -30 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 380 * fem,
                        height: 255.27 * fem,
                        child: Image.asset(
                          'assets/rectangle-46-qBC.png',
                          width: 490.04 * fem,
                          height: 466.27 * fem,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 21 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 143 * fem,
                        height: 47 * fem,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormularioActualizar(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5b7ad9), // Color de fondo
                            foregroundColor: const Color(0xffffffff), // Color del texto
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15 * fem), // Borde redondeado
                            ),
                          ),
                          child: Text(
                            'Editar',
                            style: GoogleFonts.libreFranklin(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.21 * ffem / fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 186 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 154 * fem,
                        height: 47 * fem,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Confirmar eliminación'),
                                  content: Text('¿Estás seguro de que deseas eliminar a este cliente? Esta acción no se puede deshacer.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context); // Cerrar el diálogo de confirmación
                                      },
                                      child: Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        eliminarUsuario(); // Llamar al método eliminarUsuario
                                        Navigator.pop(context); // Cerrar el diálogo de confirmación
                                      },
                                      child: Text('Eliminar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5b7ad9), // Color de fondo
                            foregroundColor: const Color(0xffffffff), // Color del texto
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15 * fem), // Borde redondeado
                            ),
                          ),
                          child: Text(
                            'Eliminar',
                            style: GoogleFonts.libreFranklin(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.21 * ffem / fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}