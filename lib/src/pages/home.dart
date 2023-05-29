

import 'package:flutter/material.dart';


class AbogadoPage extends StatelessWidget {
  const AbogadoPage({super.key});

static final nombrePagina="Abogados";

static final List<Map<String, dynamic>> tareas = [
{
  'nombre': 'Abogado uno',
  'descripcion':'Descripcion ',
  'Estado':false
},
{
  'nombre': 'Abogado dos',
  'descripcion':'Descripcion ',
  'Estado':false
},
{
  'nombre': 'Abogado tres',
  'descripcion':'Descripcion ',
  'Estado':true
},
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Abogados'),
         
        ),
        body: ListView(
            children: _crearItem()
            ),
    );
  }
    List<Widget> _crearItem(){
      List<Widget> temporal=[];

      for (Map<String, dynamic> tarea in tareas){
        Widget item=ListTile(
          title: Text("${tarea['nombre']}"),
        );
        temporal.add(item);
      }
      return temporal;
    }
  }




