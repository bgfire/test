import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myanmar_baydin/drawer/deviceinfo.dart';
import 'package:myanmar_baydin/mahabook/maha_home.dart';
import 'package:myanmar_baydin/provider/home_pro.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   // var data = EasyLocalizationProvider.of(context).data;

    return ChangeNotifierProvider(
      builder: (context)=> MyData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'I/O',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyDevicInfo(),
      ),
    );
  }
}
