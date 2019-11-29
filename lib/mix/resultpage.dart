import 'package:flutter/material.dart';
import 'package:myanmar_baydin/mix/userprovider.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("AssessToken"),
      ),
      body: Center(
        child: Text('${data.getResponse.accessToken}'),
      ),
    );
  }
}
