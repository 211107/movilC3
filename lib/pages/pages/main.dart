import 'package:flutter/material.dart';
import 'package:untitled/pages/pages/loginPaciente_page.dart';
import 'package:untitled/pages/pages/datosPaciente_page.dart';
import 'package:untitled/pages/pages/pantallaCalendario_page.dart';
import 'package:untitled/pages/pages/registroDoctor_page.dart';
import 'package:untitled/pages/pages/tablaCitas_page.dart';
import 'package:untitled/pages/pages/registro_page.dart';
import 'package:untitled/pages/pages/formulario_page.dart';
import 'package:untitled/pages/pages/home_page.dart';
import 'package:untitled/pages/pages/informacion_page.dart';
import 'package:untitled/pages/pages/loginDoctor_page.dart';
import 'package:untitled/pages/pages/formulario_actualizar.dart'; // Importa FormularioActualizar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Aplicacion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
      // home: const MyLogin_Paciente(title: ''),
      // home: const MyLogin_Doctor(title: ''),
      // home: const MyDatos_Paciente(title: ''),
      // home: const Informacion(title: ''),
      // home: const TablaCitas(title: ''),
      // home: const RegistroDoctor(title: ''),
      // home: const MyRegistro(title: ''),
      // home: const MyFormulario(title: ''),
      // home: const PantallaCalendario(title: ''),
      // home: const FormularioActualizar(title: ''), // Descomenta esta línea para agregar FormularioActualizar
    );
  }
}
