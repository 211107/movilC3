import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/pages/pages/datosPaciente_page.dart';
import 'package:untitled/pages/pages/loginPaciente_page.dart';
import 'dart:convert';

class PantallaCalendario extends StatefulWidget {
  const PantallaCalendario({super.key, required this.title});

  final String title;

  @override
  State<PantallaCalendario> createState() => _PantallaCalendarioState();
}

class _PantallaCalendarioState extends State<PantallaCalendario> {
  List<Map<String, dynamic>> pacientes = [];

  @override
  void initState() {
    super.initState();
    // Llama a la función para obtener los pacientes al iniciar la pantalla
    getPacientes();
  }

  Future<void> getPacientes() async {
    final SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    Map<String, dynamic> user =
    jsonDecode(sharedPreferences.getString('user')!);
    // print(user);
    Map<String, dynamic> data = user['data'];
    String nombre = data['nombre']; // "sss"
    String apellido = data['apellido']; // "ss"
    String correo = data['correo']; // "1212211"
    // Crear un nuevo mapa con los datos
    Map<String, dynamic> nuevoPaciente = {
      'nombre': nombre,
      'apellido': apellido,
      'correo': correo,
    };

    setState(() {
      pacientes.add(nuevoPaciente);
    });

    // try {
    //   // Realiza una solicitud GET al servidor backend
    //   final response = await http.get(Uri.parse('http://192.168.100.11:4000/'));
    //   pacientes = List<Map<String, dynamic>>.from(json.decode(response.body));
    //   print(pacientes);
    //   if (response.statusCode == 200) {
    //     // Si la solicitud fue exitosa, procesa los datos de los pacientes
    //     setState(() {
    //       pacientes =
    //           List<Map<String, dynamic>>.from(json.decode(response.body));
    //     });
    //   } else {
    //     // Si hubo un error en la solicitud, muestra un mensaje de error
    //     print('Error al obtener los pacientes: ${response.statusCode}');
    //   }
    // } catch (error) {
    //   print('Error al obtener los pacientes: $error');
    // }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 350;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    return SingleChildScrollView(
      child: Container(
        // pantallaprincipalpacienteaZ4 (168:45)
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouptfjeWhc (QxAbbUr9L1ihzxuicVTFJe)
              margin:
              EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20.36 * fem),
              width: 430.25 * fem,
              height: 221.64 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // eduardojimnezENi (168:47)
                    left: 105 * fem,
                    top: 63 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 98 * fem,
                        height: 25 * fem,
                        child: Text(
                          pacientes.isNotEmpty &&
                              pacientes[0].containsKey('nombre')
                              ? '${pacientes[0]['nombre']} ${pacientes[0]['apellido']}'
                              : 'N/A',
                          style: GoogleFonts.libreFranklin(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.21 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image23i2z (168:155)
                    left: 279 * fem,
                    top: 42 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 56 * fem,
                        height: 58 * fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100 * fem),
                          child: Image.asset(
                            'assets/image-23-n4n.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                    left: 28 * fem,
                    top: 58 * fem,
                    child: GestureDetector(
                      onTap: () {
                        // Aquí colocas la función que quieres que se ejecute cuando se presione el botón
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(15 * fem),
                        color: const Color(0xff5b7ad9),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(15 * fem),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyLogin_Paciente(
                                      title:
                                      '')), // Reemplaza MyLoginDoctor con el nombre de tu página de destino
                            );

                            // Aquí colocas la función que quieres que se ejecute cuando se presione el botón
                          },
                          child: SizedBox(
                            width: 54 * fem,
                            height: 27 * fem,
                            child: Center(
                              child: SizedBox(
                                width: 18 * fem,
                                height: 18 * fem,
                                child: Image.asset(
                                  'assets/vector-5gz.png',
                                  width: 18 * fem,
                                  height: 18 * fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupwjui3st (QxAbnE3EwD5mYDrJhgWjUi)
              margin:
              EdgeInsets.fromLTRB(10 * fem, 0 * fem, 22 * fem, 10 * fem),
              padding:
              EdgeInsets.fromLTRB(45 * fem, 32 * fem, 35 * fem, 33 * fem),
              width: double.infinity,
              height: 122 * fem,
              decoration: BoxDecoration(
                color: const Color(0xffdedede),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup2ft4vRt (QxAbv49XcLuwK2hyUq2FT4)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 42 * fem, 3 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group15qok (168:177)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 13 * fem),
                          width: 26 * fem,
                          height: 23 * fem,
                          child: Image.asset(
                            'assets/group-15.png',
                            width: 26 * fem,
                            height: 23 * fem,
                          ),
                        ),
                        Text(
                          // agendarcitaxdU (168:180)
                          'Agendar cita',
                          style: GoogleFonts.libreFranklin(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.21 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // belltn2 (180:97)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 66 * fem, 23 * fem),
                    width: 18 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/bell.png',
                      width: 18 * fem,
                      height: 20 * fem,
                    ),
                  ),
                  SizedBox(
                    // autogroupszqeQkN (QxAc1dpZd68g4h3LLHSzQe)
                    height: double.infinity,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const MyDatos_Paciente(title: '')),
                            );
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                            overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 3 * fem),
                            width: 27 * fem,
                            height: 29 * fem,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/group-14-vUe.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // historial55p (168:181)
                          'Historial',
                          style: GoogleFonts.libreFranklin(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.21 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // autogroupvv6wQdt (QxAcBYhiPhLufpXfC2vV6W)
              width: double.infinity,
              height: 424.53 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // calendar2024january9rN (168:51)
                    left: 33 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 0 * fem),
                      width: 282 * fem,
                      height: 265 * fem,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // januaryD5Y (I168:52;45:471)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16 * fem),
                              child: Text(
                                'January',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frameuDG (168:53)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                3 * fem, 1.5 * fem, 3.5 * fem, 1.5 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // sun1GJ (I168:54;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                    child: Text(
                                      'SUN',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sunVxA (I168:55;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 17 * fem, 0 * fem),
                                    child: Text(
                                      'MON',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sunpDk (I168:56;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 18 * fem, 0 * fem),
                                    child: Text(
                                      'TUE',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sun8VL (I168:57;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 17 * fem, 0 * fem),
                                    child: Text(
                                      'WED',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sunFK4 (I168:58;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 21 * fem, 0 * fem),
                                    child: Text(
                                      'THU',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sunZae (I168:59;45:475)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 21.5 * fem, 0 * fem),
                                    child: Text(
                                      'FRI',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff6d7680),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // sunUSi (I168:60;45:475)
                                  child: Text(
                                    'SAT',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff6d7680),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // weekPpa (168:61)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 6.5 * fem, 11 * fem, 6.5 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // num5xJ (I168:62;45:472)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 30 * fem, 0 * fem),
                                    child: Text(
                                      '30',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numoNW (I168:63;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // num7e6 (I168:64;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numECv (I168:65;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // num9Kt (I168:66;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numfp2 (I168:67;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '5',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numPzv (I168:68;45:470)
                                  child: Text(
                                    '6',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // weekL9U (168:69)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                11 * fem, 6.5 * fem, 7 * fem, 6.5 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // numRgi (I168:70;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numYmL (I168:71;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                    child: Text(
                                      '8',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numeZU (I168:72;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 30 * fem, 0 * fem),
                                    child: Text(
                                      '9',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numAGv (I168:73;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 26 * fem, 0 * fem),
                                    child: Text(
                                      '10',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numsx2 (I168:74;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 26 * fem, 0 * fem),
                                    child: Text(
                                      '11',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numzmk (I168:75;45:470)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 26 * fem, 0 * fem),
                                    child: Text(
                                      '12',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff262c33),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numixe (I168:76;45:470)
                                  child: Text(
                                    '13',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // weekUB8 (168:77)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 6.5 * fem, 7 * fem, 6.5 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // nummg2 (I168:78;45:470)
                                  child: Text(
                                    '14',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numh3t (I168:79;45:470)
                                  child: Text(
                                    '15',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numQU6 (I168:80;45:470)
                                  child: Text(
                                    '16',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // num8ez (I168:81;45:470)
                                  child: Text(
                                    '17',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numFzW (I168:82;45:470)
                                  child: Text(
                                    '18',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numnDk (I168:83;45:470)
                                  child: Text(
                                    '19',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numuJN (I168:84;45:470)
                                  child: Text(
                                    '20',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // weekqSv (168:85)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 6.5 * fem, 7 * fem, 6.5 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // numk46 (I168:86;45:470)
                                  child: Text(
                                    '21',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numFWe (I168:87;45:470)
                                  child: Text(
                                    '22',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numkiJ (I168:88;45:470)
                                  child: Text(
                                    '23',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // num5ka (I168:89;45:470)
                                  child: Text(
                                    '24',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numzsY (I168:90;45:470)
                                  child: Text(
                                    '25',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numvWJ (I168:91;45:470)
                                  child: Text(
                                    '26',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 26 * fem,
                                ),
                                Center(
                                  // numehC (I168:92;45:470)
                                  child: Text(
                                    '27',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // weekCCv (168:93)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 11 * fem, 0 * fem),
                            width: double.infinity,
                            height: 30 * fem,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupytczud8 (QxAdXB92sNj8ebXjb9YTcz)
                                  padding: EdgeInsets.fromLTRB(
                                      7 * fem, 6.5 * fem, 19 * fem, 6.5 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // numSd4 (I168:94;45:470)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 26 * fem, 0 * fem),
                                          child: Text(
                                            '28',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff262c33),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        // numxLW (I168:95;45:470)
                                        child: Text(
                                          '29',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff262c33),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // datingdayinmonthtjx (168:96)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: 30 * fem,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffd9242f),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        '30',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xff262c33),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // datingdayinmonthMtS (168:97)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: 30 * fem,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffd9242f),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        '31',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xff262c33),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  // datingdayoutofmonthS9C (168:98)
                                  opacity: 0.5,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 30 * fem,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0x7f38cf35),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '1',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff262c33),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  // datingdayoutofmonthJSJ (168:99)
                                  opacity: 0.5,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 23 * fem, 0 * fem),
                                    width: 30 * fem,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0x7fd9242f),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '2',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff262c33),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // numyYS (I168:100;45:472)
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff262c33),
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
                  Positioned(
                    // rectangle46iF8 (168:170)
                    left: 0 * fem,
                    top: 234.9999927581 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 394 * fem,
                        height: 189.53 * fem,
                        child: Image.asset(
                          'assets/rectangle-46-qBC.png',
                          width: 394 * fem,
                          height: 189.53 * fem,
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