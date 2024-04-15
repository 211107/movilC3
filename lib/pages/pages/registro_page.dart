import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/pages/pages/formulario_page.dart';
import 'package:untitled/pages/services/user_service.dart';

class MyRegistro extends StatefulWidget {
  const MyRegistro({super.key, required this.title});

  final String title;

  @override
  State<MyRegistro> createState() => _MyRegistroState();
}

class _MyRegistroState extends State<MyRegistro> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  late bool _passwordVisible = false;
  String error = "";
  void _login() {
    // Lógica de autenticación
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffffffff)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup8p2s97c (QxAVAfZMA41CH3qNV38p2S)
                    padding: EdgeInsets.fromLTRB(
                        28 * fem, 14 * fem, 28 * fem, 14 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupqwyz3Cz (QxATz2s3Kw4hNrvXngqwYz)
                          margin: EdgeInsets.fromLTRB(
                              98 * fem, 0 * fem, 97 * fem, 53 * fem),
                          width: double.infinity,
                          height: 129 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // image9y6e (164:46)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 102 * fem,
                                    height: 102 * fem,
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(20 * fem),
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
                                left: 0 * fem,
                                top: 96 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 109 * fem,
                                    height: 33 * fem,
                                    child: Text(
                                      'Regístrate',
                                      style: GoogleFonts.ptSans(
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2925 * ffem / fem,
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
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: double.infinity,
                          height: 47 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffbbbbbb)),
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
                                        BorderRadius.circular(15 * fem),
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
                                          contentPadding:
                                          EdgeInsets.only(left: 40 * fem),
                                          errorBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28)),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.red,
                                              )),
                                          focusedErrorBorder:
                                          const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28)),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        controller: _nameController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image14kv2 (164:58)
                                left: 16 * fem,
                                top: 13 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17 * fem,
                                    height: 17 * fem,
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
                          // autogrouprf3t9vE (QxAU9H6dpsMUEgrFG5rF3t)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: double.infinity,
                          height: 47 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffbbbbbb)),
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
                                        BorderRadius.circular(15 * fem),
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
                                          contentPadding:
                                          EdgeInsets.only(left: 40 * fem),
                                          errorBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28)),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.red,
                                              )),
                                          focusedErrorBorder:
                                          const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28)),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        controller: _lastNameController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image14kv2 (164:58)
                                left: 16 * fem,
                                top: 13 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17 * fem,
                                    height: 17 * fem,
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
                          // autogrouprf3t9vE (QxAU9H6dpsMUEgrFG5rF3t)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: double.infinity,
                          height: 47 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffbbbbbb)),
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
                                        BorderRadius.circular(15 * fem),
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
                                          hintText: '       Correo    ',
                                          contentPadding:
                                          EdgeInsets.only(left: 40 * fem),
                                          errorBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28)),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.red,
                                              )),
                                          focusedErrorBorder:
                                          const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28)),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        controller: _correoController,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image14kv2 (164:58)
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
                            ],
                          ),
                        ),
                        Container(
                          // autogrouprf3t9vE (QxAU9H6dpsMUEgrFG5rF3t)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: double.infinity,
                          height: 47 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffbbbbbb)),
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
                                        BorderRadius.circular(15 * fem),
                                        // border: Border.all(color: Color(0xff000000)),
                                      ),
                                      child: TextFormField(
                                        controller: _passwordController,
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.21 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '       Contraseña    ',
                                          contentPadding: EdgeInsets.only(
                                              left: 40 * fem, top: 13 * fem),
                                          errorBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28)),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.red,
                                              )),
                                          focusedErrorBorder:
                                          const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28)),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _passwordVisible =
                                                !_passwordVisible;
                                              });
                                            },
                                            child: Icon(
                                              _passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        obscureText: !_passwordVisible,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image14kv2 (164:58)
                                left: 16 * fem,
                                top: 13 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 17 * fem,
                                    height: 17 * fem,
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
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            error,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // Verifica si el formulario es válido antes de continuar
                            if (_nameController.text == '' ||
                                _lastNameController.text == '' ||
                                _passwordController.text == '' ||
                                _correoController.text == '') {
                              _showErrorDialog('Completa los campos');
                            } else {
                              try {
                                UserService userService = UserService();
                                String mensaje = await userService.createUser(
                                  _nameController.text,
                                  _lastNameController.text,
                                  _passwordController.text,
                                  _correoController.text,
                                );

                                if (mensaje == "200") {
                                  _navigateToMyFormulario();
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
                          child: Container(
                            // autogroupkflaoXt (QxAPbVWW7axYBC9UZskFLA)
                            // margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 28*fem, 44*fem),
                            width: double.infinity,
                            height: 47 * fem,
                            decoration: BoxDecoration(
                              color: const Color(0xff5b7ad9),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Create Account',
                                style: GoogleFonts.ptSans(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2925 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // signupwithsocialaccountsGr (117:282)
                          margin: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Sign up with social account',
                            style: GoogleFonts.inter(
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
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
                                    final LoginResult result =
                                    await FacebookAuth.instance.login();

                                    if (result.status == LoginStatus.success) {
                                      final AccessToken accessToken =
                                      result.accessToken!;

                                      // Aquí puedes utilizar el accessToken para realizar acciones con la cuenta de Facebook,
                                      // como obtener información del perfil del usuario o autenticarlo en tu aplicación.
                                      // Por ejemplo, puedes imprimir el token de acceso:
                                      print(
                                          'Access Token: ${accessToken.token}');
                                    } else {
                                      // El inicio de sesión con Facebook falló.
                                      print(
                                          'Error al iniciar sesión con Facebook: ${result.message}');
                                    }
                                  } catch (e) {
                                    // Manejar errores
                                    print(
                                        'Error al iniciar sesión con Facebook: $e');
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
                                  final GoogleSignIn googleSignIn =
                                  GoogleSignIn();
                                  // Lógica para iniciar sesión con Google
                                  try {
                                    final GoogleSignInAccount? googleUser =
                                    await googleSignIn.signIn();

                                    if (googleUser != null) {
                                      // El inicio de sesión con Google fue exitoso.
                                      // Ahora puedes acceder a la información del usuario, como su nombre, correo electrónico, etc.
                                      print(
                                          'Usuario: ${googleUser.displayName}');
                                      print(
                                          'Correo electrónico: ${googleUser.email}');
                                      // También puedes obtener un token de acceso para autenticar al usuario en tu aplicación.
                                      final GoogleSignInAuthentication
                                      googleAuth =
                                      await googleUser.authentication;
                                      final String accessToken =
                                      googleAuth.accessToken!;
                                      print('Access Token: $accessToken');
                                    } else {
                                      // El inicio de sesión con Google fue cancelado.
                                      print(
                                          'Inicio de sesión con Google cancelado.');
                                    }
                                  } catch (error) {
                                    // Manejar errores
                                    print(
                                        'Error al iniciar sesión con Google: $error');
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
        ),
      ),
    );
  }

  // Función para mostrar un diálogo de error
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  // Función para navegar a MyFormulario
  void _navigateToMyFormulario() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MyFormulario(),
      ),
    );
  }
}