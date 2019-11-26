import 'package:flutter/material.dart';
import 'package:myanmar_baydin/drawer/change_language.dart';
import 'package:myanmar_baydin/drawer/printer_settings.dart';
import 'package:myanmar_baydin/provider/home_pro.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(color: Colors.blue),
          ),

          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text('Printer Settiongs'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrinterSettings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Change Language'),
            onTap: ()=> Navigator.of(context).pushReplacement(ChangeLanguage()),
          ),
        ],
      ),
    );
  }
}
