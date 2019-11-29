import 'package:flutter/material.dart';
import 'package:myanmar_baydin/HeroAnimations/result.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(
          tag: 'hero',
          child: Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(

                radius: 50,
                backgroundImage: AssetImage('assets/images/man.jpg'),),
            ),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Enter Name'),
          textCapitalization: TextCapitalization.words,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Enter Name'),
          textCapitalization: TextCapitalization.words,
        ),
        RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
        })
      ],
    ),
    );
  }
}

