import 'package:flutter/material.dart';
import 'package:myanmar_baydin/mix/resultpage.dart';
import 'package:myanmar_baydin/mix/user.dart';
import 'package:myanmar_baydin/mix/userprovider.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController userPasswordController = TextEditingController();


  void _getUser() {
    User(username: userNameController.text,password: userPasswordController.text);

    if (userNameController.text == '') {

      Provider.of<UserProvider>(context).setErrorMessage='Please Enter your username';

    } else {
      Provider.of<UserProvider>(context).Login(
          User(
              username: userNameController.text,
              password: userPasswordController.text)).then((value) {
        if (value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {

var data = Provider.of<UserProvider>(context);
  
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextField(
                decoration: InputDecoration(errorText:data.getErrorMessage ),
                controller: userNameController,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextField(
                controller: userPasswordController,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child:  MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Align(
                  child: Provider.of<UserProvider>(context).getLoading ?
                  CircularProgressIndicator(backgroundColor: Colors.white, strokeWidth: 2,) :
                  Text('Login', style: TextStyle(color: Colors.white),),
                ), onPressed: () {
                _getUser();


              },
              )
            ),
          ],
        ),
      ),
    );
  }
}
