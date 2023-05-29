import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/abogados_provider.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  static final nombrePagina = "formulario";

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {

  final idForm = GlobalKey<FormState>();

  Map<String,dynamic> nuevaTarea={};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crear Abogado"),
      ),
      body: SingleChildScrollView(
        //hace que podas ir hacia abajo y arriba sin errores
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: idForm,
            child: Column(
              children: <Widget>[
                _crearInputNombre(),
                _crearInputApellido(),
                _crearBoton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _crearInputNombre(){
    return TextFormField(
      onSaved: (valor){
        nuevaTarea['nombre']=valor;
      },
                  decoration: InputDecoration(hintText: "Nombre "),
                );
                
  }
  _crearInputApellido(){
    return Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    onSaved: (valor){
                      nuevaTarea['apellido']=valor;
                    },
                    maxLines: null,
                    decoration: InputDecoration(hintText: "Apellido Paterno "),
                  ),
                );
  }
  _crearBoton(BuildContext context){
    return Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                       idForm.currentState?.save();
                       nuevaTarea['estado']=false;
                       AbogadosProvider().agregarAbogados(nuevaTarea);
                       Navigator.pop(context);
                    },
                    child: Text("Crear"),
                  ),
                );
  }
}
