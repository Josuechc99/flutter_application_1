import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Bienvenido a Sistema Juridico'),
      ),
    );
  }
}