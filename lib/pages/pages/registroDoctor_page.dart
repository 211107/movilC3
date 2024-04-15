import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/pages/tablaCitas_page.dart';
import 'package:untitled/pages/services/doctor_service.dart';



class RegistroDoctor extends StatefulWidget {
  const RegistroDoctor({super.key, required this.title});

  final String title;

  @override
  State<RegistroDoctor> createState() => _RegistroDoctorState();
}

class _RegistroDoctorState extends State<RegistroDoctor> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _correoController= TextEditingController();
  String error = "";


  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            // registrodoctorrEz (164:45)
            onPressed: () {},
            style: TextButton.styleFrom (
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup8p2s97c (QxAVAfZMA41CH3qNV38p2S)
                    padding: EdgeInsets.fromLTRB(28*fem, 14*fem, 28*fem, 14*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupqwyz3Cz (QxATz2s3Kw4hNrvXngqwYz)
                          margin: EdgeInsets.fromLTRB(98*fem, 0*fem, 97*fem, 53*fem),
                          width: double.infinity,
                          height: 129*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // image9y6e (164:46)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 102*fem,
                                    height: 102*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20*fem),
                                      child: Image.asset(
                                        'assets/image-9-uKU.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // regstrateUJJ (164:47)
                                left: 0*fem,
                                top: 96*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 109*fem,
                                    height: 33*fem,
                                    child: Text(
                                      'Regístrate',
                                      style: GoogleFonts.ptSans(
                                        fontSize: 25*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2925*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouprf3t9vE (QxAU9H6dpsMUEgrFG5rF3t)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                          width: double.infinity,
                          height: 47*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffbbbbbb)),
                            borderRadius: BorderRadius.circular(15*fem),
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
                                        borderRadius: BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
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
                                          hintText: '       Nombre    ',
                                          contentPadding: EdgeInsets.only(left: 40 * fem),
                                        ),
                                        controller: _usernameController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image14kv2 (164:58)
                                left: 16*fem,
                                top: 13*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/image-14-7S6.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        Container(
                          // autogroupe6qcyRQ (QxAUNc3mEHnhAk6Sy9E6qC)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 47*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffbbbbbb)),
                            borderRadius: BorderRadius.circular(15*fem),
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
                                        borderRadius: BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
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
                                          hintText: '       Apellidos    ',
                                          contentPadding: EdgeInsets.only(left: 40 * fem),
                                        ),
                                        controller: _apellidoController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image194jg (164:71)
                                left: 16*fem,
                                top: 13*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/image-19-vzz.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupe6qcyRQ (QxAUNc3mEHnhAk6Sy9E6qC)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 47*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffbbbbbb)),
                            borderRadius: BorderRadius.circular(15*fem),
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
                                        borderRadius: BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
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
                                          hintText: '       Cedula profesional    ',
                                          contentPadding: EdgeInsets.only(left: 40 * fem),
                                        ),
                                        controller: _cedulaController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image194jg (164:71)
                                left: 16*fem,
                                top: 13*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/image-22.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupe6qcyRQ (QxAUNc3mEHnhAk6Sy9E6qC)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 47*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffbbbbbb)),
                            borderRadius: BorderRadius.circular(15*fem),
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
                                        borderRadius: BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
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
                                          hintText: '       Correo   ',
                                          contentPadding: EdgeInsets.only(left: 40 * fem),
                                        ),
                                        controller: _correoController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image194jg (164:71)
                                left: 16*fem,
                                top: 13*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/image-16-nMt.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupe6qcyRQ (QxAUNc3mEHnhAk6Sy9E6qC)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 47*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffbbbbbb)),
                            borderRadius: BorderRadius.circular(15*fem),
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
                                        borderRadius: BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
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
                                          hintText: '       Contraseña   ',
                                          contentPadding: EdgeInsets.only(left: 40 * fem),
                                        ),
                                        controller: _passwordController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image194jg (164:71)
                                left: 16*fem,
                                top: 13*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/image-17-z3Q.png',
                                      fit: BoxFit.cover,
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



                  TextButton(
                    onPressed: () async {
                      // Verifica si el formulario es válido antes de continuar
                      if (_usernameController.text == '' ||
                          _apellidoController.text == '' ||
                          _passwordController.text == '' ||
                          _cedulaController.text == '' ||
                          _correoController.text == '') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Formulario Incompleto'),
                              content: Text('Por favor, completa todos los campos del formulario.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cerrar'),
                                ),
                              ],
                            );
                          },
                        );

                      } else {
                        try {
                          DoctorService doctorService = DoctorService();
                          String mensaje = await doctorService.createDoctor(
                            _usernameController.text,
                            _apellidoController.text,
                            _passwordController.text,
                            _cedulaController.text,
                            _correoController.text,
                          );

                          if (mensaje == "200") {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Usuario creado exitosamente'),
                                  content: Text('El usuario se ha creado correctamente.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Cierra el diálogo
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => const TablaCitas(title: '')),
                                        ); // Navega a la pantalla de citas
                                      },
                                      child: Text('Aceptar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        } catch (e) {
                          if (mounted) {
                            // Verifica si el widget aún está montado antes de llamar a setState
                            setState(() {
                              error = e.toString();
                            });
                          }
                        }
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff5b7ad9),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 213.48 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 8.9881142752 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 380 * fem,
                                height: 255.27 * fem,
                                child: Image.asset(
                                  'assets/rectangle-46-qBC.png',
                                  width: 390.04 * fem,
                                  height: 166.27 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle64WUW (201:97)
                            left: 28*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 304*fem,
                                height: 47*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(15*fem),
                                    color: const Color(0xff5b7ad9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // createaccountDdp (201:98)
                            left: 129*fem,
                            top: 14*fem,
                            child: Align(
                              child: SizedBox(
                                width: 102*fem,
                                height: 21*fem,
                                child: Text(
                                  'Create Account',
                                  style: GoogleFonts.ptSans(
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2925*ffem/fem,
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
          ),

        )



    );
  }
}