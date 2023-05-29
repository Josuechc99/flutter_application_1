import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/jueces_screen.dart';
import 'package:flutter_application_1/screens/screens.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Josue Choquebarra'), 
            accountEmail: Text('josue@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval( 
                child: Image.network(
                  'https://th.bing.com/th/id/R.67002235719af37614f03c53cb42179c?rik=MYcp%2fimhtB66Fw&riu=http%3a%2f%2fhydroflow.co.nz%2fimages%2fterritory-manager-o4dsh.png&ehk=haQgaLuDWBso5X6KrUXtepfISqozAJmgLgLedixwrPg%3d&risl=&pid=ImgRaw&r=0',
                  width: 90,height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => InicioScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Abogados'),
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => AbogadosScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jueces'),
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => JuecesScreen()));
            },
          ),
        ],
      ),
    );
  }
}