import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences extends StatefulWidget {
  @override
  _SharedPreferencesState createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<SharedPreferences> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.lightGreen,
        primarySwatch: Colors.yellow,
        cursorColor: Colors.white,
        applyElevationOverlayColor: true,

      ),
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/man.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('Shared Prefs'),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          body: Center(
            child: SizedBox(
              width: 350,
              height: 300,
              child: Container(
                color: Colors.black38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration:
                        InputDecoration(
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.white),borderRadius: BorderRadius.circular(3)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.red),borderRadius: BorderRadius.circular(3)),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.lightGreen),borderRadius: BorderRadius.circular(3)),
                          prefixIcon: Icon(Icons.person,color: Colors.red,),),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration:
                        InputDecoration(prefixIcon: Icon(Icons.lock)),
                    ),
                    ),
                    RaisedButton(
                    elevation: 5.0 ,
                      child: Text('Login'),
                        onPressed: (){})
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
