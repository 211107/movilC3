import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/pages/pantallaCalendario_page.dart';
import 'package:untitled/pages/pages/tablaCitas_page.dart';
import 'package:untitled/pages/services/user_service.dart';

class FormularioActualizar extends StatefulWidget {
  const FormularioActualizar({Key? key}) : super(key: key);

  @override
  State<FormularioActualizar> createState() => _FormularioActualizarState();
}

class _FormularioActualizarState extends State<FormularioActualizar> {
  final TextEditingController edadController = TextEditingController();
  final TextEditingController tipoSangreController = TextEditingController();
  final TextEditingController enfermedadesController = TextEditingController();
  final TextEditingController alergiasController = TextEditingController();
  final TextEditingController medicamentosController = TextEditingController();
  final TextEditingController fechaCitaController = TextEditingController();
  String error = "";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    void showExitoDialog(String message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('¡Guardado exitoso!'),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cerrar la alerta
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TablaCitas(
                          title: ''), // Reemplaza 'OtraPagina' con el nombre de tu página de destino
                    ),
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }

    void enviardato() async {
      if (edadController.text == '' ||
          tipoSangreController.text == '' ||
          enfermedadesController.text == '' ||
          alergiasController.text == '' ||
          medicamentosController.text == '') {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Completa los campos'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'),
                ),
              ],
            );
          },
        );
      } else {
        try {
          int? edad;
          String edadText = edadController.text;
          if (edadText.isNotEmpty) {
            edad = int.tryParse(edadText);
          }

          UserService userService = UserService();

          String texto = await userService.updateUser(
              edad!,
              tipoSangreController.text,
              enfermedadesController.text,
              alergiasController.text,
              medicamentosController.text);

          if (texto == "200") {
            showExitoDialog('Los datos se han guardado correctamente.');
          }
        } catch (e) {
          setState(() {
            error = e.toString();
          });
          print('Error al llamar a actualizar: $e');
        }
      }
    }



    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 39 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
                  width: double.infinity,
                  height: 648 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -30 * fem,
                        top: -100 * fem,
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
                        left: 265 * fem,
                        top: 13 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 95 * fem,
                            height: 102 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20 * fem),
                              child: Image.asset(
                                'assets/image-10-JwQ.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28 * fem,
                        top: 108 * fem,
                        child: Container(
                          width: 300 * fem,
                          height: 600 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 47 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffbbbbbb)),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 304 * fem,
                                          height: 47 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15 * fem),
                                            ),
                                            child: TextFormField(
                                              style: GoogleFonts.libreFranklin(
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.21 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: '       Edad  editar  ',
                                                contentPadding:
                                                EdgeInsets.only(left: 40 * fem),
                                                errorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              controller: edadController,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 47 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffbbbbbb)),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 304 * fem,
                                          height: 47 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15 * fem),
                                            ),
                                            child: TextFormField(
                                              style: GoogleFonts.libreFranklin(
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.21 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                '       Tipo de sangre    ',
                                                contentPadding:
                                                EdgeInsets.only(left: 40 * fem),
                                                errorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              controller: tipoSangreController,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 47 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffbbbbbb)),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 304 * fem,
                                          height: 47 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15 * fem),
                                            ),
                                            child: TextFormField(
                                              style: GoogleFonts.libreFranklin(
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.21 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                '       Enfermedades    ',
                                                contentPadding:
                                                EdgeInsets.only(left: 40 * fem),
                                                errorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              controller: enfermedadesController,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 47 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffbbbbbb)),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 304 * fem,
                                          height: 47 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15 * fem),
                                            ),
                                            child: TextFormField(
                                              style: GoogleFonts.libreFranklin(
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.21 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: '       Alergias    ',
                                                contentPadding:
                                                EdgeInsets.only(left: 40 * fem),
                                                errorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              controller: alergiasController,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: double.infinity,
                                height: 47 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffbbbbbb)),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 304 * fem,
                                          height: 47 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15 * fem),
                                            ),
                                            child: TextFormField(
                                              style: GoogleFonts.libreFranklin(
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.21 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                '       Medicamentos    ',
                                                contentPadding:
                                                EdgeInsets.only(left: 40 * fem),
                                                errorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                const OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(28)),
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              controller: medicamentosController,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  enviardato();

                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      28 * fem, 0 * fem, 28 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 35 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5b7ad9),
                                    borderRadius:
                                    BorderRadius.circular(15 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Guardar',
                                      style: GoogleFonts.libreFranklin(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.21 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
