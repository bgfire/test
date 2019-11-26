
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatefulWidget {
  final TextStorage textStorage;
  MyHomePage({this.textStorage});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value;
  String path;
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.textStorage.readText().then((v) {
      setState(() {
        value = v;
      });
    });
    widget.textStorage._localFile.then((v) {
      path = v.path;
    });
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter I/O'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'File Location : ',
              style: TextStyle(),
              maxLines: 2,
            ),
            Text(path ?? " I Can't find Path.."),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Data From Dick : '),
                Text(value ?? "I Can't find Your text")
              ],
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: 'Enter Text',
              ),
              keyboardType: TextInputType.multiline,
            ),
            RaisedButton(child: Text('Write File'), onPressed: onClick),
            RaisedButton(
                child: Text('Read File'),
                onPressed: () {
                  print('Read ; ' + read());
                  widget.textStorage.readText();
                }),
          ],
        ),
      ),
    );
  }

  void onClick() {
    setState(() {
      value += '\n' + myController.text;
      widget.textStorage.writeText(value);
      myController.clear();
    });
  }

  String p() {
    String t;
    widget.textStorage._localFile.then((t) {
      t = t;
      print(t);
    });
    return t;
  }

  String read() {
    String str;
    widget.textStorage.readText().then((s) {
      str = s;
    });
    return str;
  }
}

class TextStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/read-and-wright-file.txt');
  }

  Future<File> writeText(String txt) async {
    final file = await _localFile;
    return file.writeAsString('$txt');
  }

  Future<String> readText() async {
    String s;
    try {
      final file = await _localFile;
      s = await file.readAsString();
    } catch (d) {
      print(d);
    }
    return s;
  }
}
