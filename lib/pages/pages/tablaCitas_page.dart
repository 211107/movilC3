import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/pages/informacion_page.dart';



class TablaCitas extends StatefulWidget {
  const TablaCitas({super.key, required this.title});

  final String title;

  @override
  State<TablaCitas> createState() => _TablaCitasState();
}

class _TablaCitasState extends State<TablaCitas> {

  late String userId;
  @override
  void initState() {
    super.initState();
    userId = "1";
    // Aquí puedes inicializar userId si es necesario
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: TextButton(
              // tabladecitasDjU (168:222)
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
                    SizedBox(
                      // autogroupnf4aYFx (QxAfo7MCNFESUYrXu2Nf4A)
                      width: double.infinity,
                      height: 369.33*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // tabladecitasrnS (168:223)
                            left: 128*fem,
                            top: 76*fem,
                            child: Align(
                              child: SizedBox(
                                width: 152*fem,
                                height: 29*fem,
                                child: Text(
                                  'TABLA DE CITAS',
                                  style: GoogleFonts.ptSans(
                                    fontSize: 22*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2925*ffem/fem,
                                    color: const Color(0xff5b7ad9),
                                  ),
                                ),
                              ),
                            ),
                          ),
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
                          Positioned(
                            // rectangle55Hug (169:367)
                            left: 5*fem,
                            top: 200*fem,
                            child: Align(
                              child: SizedBox(
                                width: 350*fem,
                                height: 27*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    color: const Color(0xff5b7ad9),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(9*fem),
                                      topRight: Radius.circular(9*fem),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle56C14 (169:375)
                            left: 5*fem,
                            top: 230*fem,
                            child: Align(
                              child: SizedBox(
                                width: 349*fem,
                                height: 104*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only (
                                      bottomRight: Radius.circular(10*fem),
                                      bottomLeft: Radius.circular(10*fem),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 9*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 261 * fem,
                            top: 255 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 84 * fem,
                                height: 29 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    int userId = 0; // Aquí debes establecer el id_paciente del usuario al que deseas ver la información
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Informacion(title: '', userId: userId)),

                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xff5b7ad9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5 * fem),
                                    ),
                                  ),
                                  child: Text(
                                    'Ver datos',
                                    style: GoogleFonts.libreFranklin(
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.21 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Positioned(
                            // rectangle674Bg (208:137)
                            left: 265*fem,
                            top: 295*fem,
                            child: Align(
                              child: SizedBox(
                                width: 79*fem,
                                height: 29*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                    color: const Color(0xff55d9d9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // aceptarNiA (208:138)
                            left: 284*fem,
                            top: 300*fem,
                            child: Align(
                              child: SizedBox(
                                width: 43*fem,
                                height: 14*fem,
                                child: Text(
                                  'Aceptar',
                                  style: GoogleFonts.libreFranklin(
                                    fontSize: 11*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.21*ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),

                          ),

                        ],
                      ),
                    ),
                    Container(
                      // autogroupkgtngir (QxAgPm28R9ARJJ6FwNkgtN)
                      padding: EdgeInsets.fromLTRB(6*fem, 21*fem, 6*fem, 99*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupy5dg222 (QxAg5ghuqZfHYhxxcJY5dg)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                            width: double.infinity,
                            height: 170*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle689MY (208:139)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 350*fem,
                                      height: 27*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          color: const Color(0xff5b7ad9),
                                          borderRadius: BorderRadius.only (
                                            topLeft: Radius.circular(10*fem),
                                            topRight: Radius.circular(10*fem),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle69r14 (208:140)
                                  left: 0*fem,
                                  top: 26*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 349*fem,
                                      height: 104*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          color: const Color(0xffffffff),
                                          borderRadius: BorderRadius.only (
                                            bottomRight: Radius.circular(10*fem),
                                            bottomLeft: Radius.circular(10*fem),
                                          ),
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
                                  // rectangle7465k (208:147)
                                  left: 261 * fem,
                                  top: 45 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 84 * fem,
                                      height: 29 * fem,
                                      child: TextButton(
                                        onPressed: () {
                                          // Asigna el ID del paciente aquí
                                          int userId = 1; // O el ID del paciente que desees mostrar
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Informacion(title: '', userId: userId)),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(0xff5b7ad9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5 * fem),
                                          ),
                                        ),
                                        child: Text(
                                          'Ver datos',
                                          style: GoogleFonts.libreFranklin(
                                            fontSize: 11 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.21 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  // rectangle719PU (208:143)
                                  left: 262*fem,
                                  top: 79*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 79*fem,
                                      height: 29*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(5*fem),
                                          color: const Color(0xff55d9d9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // aceptar4mL (208:144)
                                  left: 284*fem,
                                  top: 87*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 43*fem,
                                      height: 14*fem,
                                      child: Text(
                                        'Aceptar',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.21*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // autogrouplnsgxri (QxAgFM6Uko2UNbcohRLNsg)
                            width: double.infinity,
                            height: 130*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle72WNS (208:145)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 347*fem,
                                      height: 27*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          color: const Color(0xff5b7ad9),
                                          borderRadius: BorderRadius.only (
                                            topLeft: Radius.circular(10*fem),
                                            topRight: Radius.circular(10*fem),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle73osL (208:146)
                                  left: 0*fem,
                                  top: 26*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 347*fem,
                                      height: 104*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          color: const Color(0xffffffff),
                                          borderRadius: BorderRadius.only (
                                            bottomRight: Radius.circular(10*fem),
                                            bottomLeft: Radius.circular(10*fem),
                                          ),
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
                                  // rectangle7465k (208:147)
                                  left: 261 * fem,
                                  top: 45 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 84 * fem,
                                      height: 29 * fem,
                                      child: TextButton(
                                        onPressed: () {
                                          // Asigna el ID del paciente aquí
                                          int userId = 2; // O el ID del paciente que desees mostrar
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Informacion(title: '', userId: userId)),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(0xff5b7ad9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5 * fem),
                                          ),
                                        ),
                                        child: Text(
                                          'Ver datos',
                                          style: GoogleFonts.libreFranklin(
                                            fontSize: 11 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.21 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  // rectangle75uJ6 (208:149)
                                  left: 265*fem,
                                  top: 79*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 79*fem,
                                      height: 29*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(5*fem),
                                          color: const Color(0xff55d9d9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // aceptarcTQ (208:150)
                                  left: 286*fem,
                                  top: 87*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 43*fem,
                                      height: 14*fem,
                                      child: Text(
                                        'Aceptar',
                                        style: GoogleFonts.libreFranklin(
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.21*ffem/fem,
                                          color: const Color(0xffffffff),
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
                  ],
                ),
              ),
            )

        )

    );
  }
}