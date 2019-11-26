import 'package:flutter/material.dart';

class PrinterSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lato Fonts"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            trailing: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('3'),
            ),
            title: Text(
              'I Wanner test display font',
              style: TextStyle(fontFamily: 'Lato'),
            ),
          ),
          Text(
            "To add custom fonts to your application, add a fonts section here, in this flutter section. Each entry in this list should have a family key with the font family name, and a fonts key with a list giving the asset and other descriptors for the font.example:",
            style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w100),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "To add custom fonts to your application, add a fonts section here, in this flutter section. Each entry in this list should have a family key with the font family name, and a fonts key with a list giving the asset and other descriptors for the font.example:",
            style:
                TextStyle(fontFamily: 'Lato-thin',),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "To add custom fonts to your application, add a fonts section here, in this flutter section. Each entry in this list should have a family key with the font family name, and a fonts key with a list giving the asset and other descriptors for the font.example:",

          ),
        ],
      ),
    );
  }
}
