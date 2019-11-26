import 'package:flutter/material.dart';
import 'package:myanmar_baydin/provider/data_model.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';


class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<MyData>(context);
    return Container(
      child: Text(data.temptype),
    );
  }
}
