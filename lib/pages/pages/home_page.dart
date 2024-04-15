import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/pages/loginDoctor_page.dart';
import 'package:untitled/pages/pages/loginPaciente_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(

      // appBar: AppBar(
      //
      // ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Row(
                children: [
                ],
              ),
            ),


            Container(
              // image9aTg (117:345)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
              width: 118*fem,
              height: 110*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20*fem),
                child: Image.asset(
                  'assets/image-9-1Ee.png',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 49*fem),
              child: Text(
                '¡Bienvenido!',
                style: GoogleFonts.ptSans(
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2925 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(22 * fem, 0 * fem, 0 * fem, 74 * fem),
              child: Text(
                'Elige el rol correspondiente: ',
                style: GoogleFonts.libreFranklin(
                  fontSize: 13 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.21 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 20*fem, 121*fem),
              width: double.infinity,
              height: 47*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyLoginDoctor(title: '')),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5b7ad9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      minimumSize: Size(143 * fem, double.infinity),
                    ),
                    child: Text(
                      'Doctor',
                      style: GoogleFonts.libreFranklin(
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.21*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(width: 10 * fem), // Espacio entre los botones
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyLogin_Paciente(title: '')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5b7ad9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      minimumSize: Size(154 * fem, double.infinity),
                    ),
                    child: Text(
                      'Paciente',
                      style: GoogleFonts.libreFranklin(
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.21*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 171*fem, 0*fem),
              width: 223*fem,
              height: 207*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse10VW6 (117:352)
                    left: 0*fem,
                    top: 38*fem,
                    child: Align(
                      child: SizedBox(
                        width: 171*fem,
                        height: 169*fem,
                        child: Image.asset(
                          'assets/ellipse-10.png',
                          width: 171*fem,
                          height: 169*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(

                    left: 36*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 153*fem,
                        height: 151*fem,
                        child: Image.asset(
                          'assets/ellipse-11.png',
                          width: 153*fem,
                          height: 151*fem,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    // image20vbQ (117:356)
                    left: 18*fem,
                    top: 114*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 53*fem,
                        child: Image.asset(
                          'assets/image-20.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image21dEv (117:357)
                    left: 89*fem,
                    top: 49*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 53*fem,
                        child: Image.asset(
                          'assets/image-21.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}