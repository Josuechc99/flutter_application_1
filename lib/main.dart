import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/screens/formulario.dart';
import 'package:flutter_application_1/screens/jueces_screen.dart';
import 'package:flutter_application_1/screens/screens.dart';



void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion Documental',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        initialRoute: 'inicio',
        routes: {
          'inicio': ( _ ) => InicioScreen(),
          'abogados': ( _ ) => AbogadosScreen(),
          'jueces': ( _ ) => JuecesScreen(),
          'formulario': ( _ ) => FormularioScreen(),
          LoginPage.id:(_) => LoginPage(),
        },
    );
  }
}
