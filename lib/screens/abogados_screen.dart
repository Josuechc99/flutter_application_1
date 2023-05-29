import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/abogados_provider.dart';
import 'package:flutter_application_1/screens/formulario.dart';
import 'package:flutter_application_1/widgets/widgets.dart';


class AbogadosScreen extends StatelessWidget {
  const AbogadosScreen({super.key});

static final nombrepagina="abogado";

static final List<Map<String, dynamic>> abogados=[
  {
    'Nombre':"Abogado 1",
    'Sexo': "Masculino",
    'Estado':"Actico"
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Abogados'),
      ),
      body: (AbogadosProvider().abogados.isNotEmpty)? ListView(
        children: _crearAbogado(),
      ):
      Center(
        child: Text("No hay abogados agregados"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, FormularioScreen.nombrePagina),
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
  
  List<Widget> _crearAbogado() {
    List<Widget> temporal=[];

    for(Map<String,dynamic> abogado in AbogadosProvider().abogados){
      Widget item=ListTile(
        title: Text("${abogado['Nombre']}"),
      );
      temporal.add(item);
    }
    return temporal;

  }
}