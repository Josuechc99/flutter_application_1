import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';


class JuecesScreen extends StatelessWidget {
  const JuecesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Jueces'),
      ),
    );
  }
}