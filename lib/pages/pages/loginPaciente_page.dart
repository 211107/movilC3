import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/pages/pages/registro_page.dart';



class MyLogin_Paciente extends StatefulWidget {
  const MyLogin_Paciente({super.key, required this.title});

  final String title;

  @override
  State<MyLogin_Paciente> createState() => _MyLogin_PacienteState();
}

class _MyLogin_PacienteState extends State<MyLogin_Paciente> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Lógica de autenticación
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Row(
                children: [],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 358.64 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 91 * fem,
                            top: 125 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 155 * fem,
                                height: 147 * fem,
                                child: Image.asset(
                                  'assets/ellipse-3-qEe.png',
                                  width: 155 * fem,
                                  height: 147 * fem,
                                ),
                              ),
                            ),
                          ),
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
                            left: 265 * fem,
                            top: 34 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 95 * fem,
                                height: 102 * fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  child: Image.asset(
                                    'assets/image-10-Jzz.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 84 * fem,
                            top: 127 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 168 * fem,
                                height: 115 * fem,
                                child: Image.asset(
                                  'assets/dentista.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(33 * fem, 39 * fem, 23 * fem, 16 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
                            width: double.infinity,
                            height: 47 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffbbbbbb)),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Stack(
                              children: [

                                Positioned(
                                  left: 16 * fem,
                                  top: 13 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 17 * fem,
                                      height: 17 * fem,
                                      child: Image.asset(
                                        'assets/image-17-BPk.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
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
                                          border: Border.all(color: const Color(0xff000000)),
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
                                            hintText: '       Correo     ',
                                            contentPadding: EdgeInsets.only(left: 10 * fem),
                                          ),
                                          controller: _usernameController,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                            width: double.infinity,
                            height: 47 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffbbbbbb)),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16 * fem,
                                  top: 12 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 17 * fem,
                                      height: 17 * fem,
                                      child: Image.asset(
                                        'assets/image-13-d7L.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
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
                                          border: Border.all(color: const Color(0xff000000)),
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
                                            hintText: '       Correo     ',
                                            contentPadding: EdgeInsets.only(left: 10 * fem),
                                          ),
                                          controller: _passwordController,

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyRegistro(title: '')),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff5b7ad9), // Color de fondo del botón
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15 * fem), // Bordes redondeados
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 47 * fem,
                              alignment: Alignment.center, // Alineación del contenido al centro
                              child: Text(
                                'Login',
                                style: GoogleFonts.libreFranklin(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.21 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 29 * fem, 0 * fem),
                            child: Text(
                              '¿No tienes una cuenta? Regístrate',
                              style: GoogleFonts.libreFranklin(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.21 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 179.40 * fem,
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
                            left: 105 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 45 * fem,
                                height: 39 * fem,
                                child: InkWell(
                                  onTap: () async {
                                    // Lógica para iniciar sesión con Facebook
                                    try {
                                      final LoginResult result = await FacebookAuth.instance.login();

                                      if (result.status == LoginStatus.success) {
                                        final AccessToken accessToken = result.accessToken!;

                                        // Aquí puedes utilizar el accessToken para realizar acciones con la cuenta de Facebook,
                                        // como obtener información del perfil del usuario o autenticarlo en tu aplicación.
                                        // Por ejemplo, puedes imprimir el token de acceso:
                                        print('Access Token: ${accessToken.token}');
                                      } else {
                                        // El inicio de sesión con Facebook falló.
                                        print('Error al iniciar sesión con Facebook: ${result.message}');
                                      }
                                    } catch (e) {
                                      // Manejar errores
                                      print('Error al iniciar sesión con Facebook: $e');
                                    }
                                  },

                                  child: Image.asset(
                                    'assets/image-removebg-preview-2-a54.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: 173 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 39 * fem,
                                height: 39 * fem,
                                child: InkWell(
                                  onTap: () async {
                                    final GoogleSignIn googleSignIn = GoogleSignIn();
                                    // Lógica para iniciar sesión con Google
                                    try {
                                      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

                                      if (googleUser != null) {
                                        // El inicio de sesión con Google fue exitoso.
                                        // Ahora puedes acceder a la información del usuario, como su nombre, correo electrónico, etc.
                                        print('Usuario: ${googleUser.displayName}');
                                        print('Correo electrónico: ${googleUser.email}');
                                        // También puedes obtener un token de acceso para autenticar al usuario en tu aplicación.
                                        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
                                        final String accessToken = googleAuth.accessToken!;
                                        print('Access Token: $accessToken');
                                      } else {
                                        // El inicio de sesión con Google fue cancelado.
                                        print('Inicio de sesión con Google cancelado.');
                                      }
                                    } catch (error) {
                                      // Manejar errores
                                      print('Error al iniciar sesión con Google: $error');
                                    }
                                  },

                                  child: Image.asset(
                                    'assets/image-12-Db4.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 235 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 39 * fem,
                                height: 39 * fem,
                                child: Image.asset(
                                  'assets/image-13-wCz.png',
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
            ),
          ],
        ),
      ),
    );
  }
}