import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: 'hero',
          child: Center(
            child: SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/man.jpg'),),
            ),
          ),
        ),
        title: Text('Hero'),
      ),
    );
  }
}
