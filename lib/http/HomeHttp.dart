import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myanmar_baydin/http/post.dart';
import 'package:http/http.dart' as http;
import 'package:myanmar_baydin/mix/response.dart';
import 'package:myanmar_baydin/mix/user.dart';


class HttpPostHome extends StatelessWidget {

  final Future<Post> post;
  Map requestHeaders = {
    'Content-type': 'application/json',
  };

  Future<MYResponse> createPost(String url, {Map body}) async {

    return http.post(url, body: jsonEncode(body),headers:{'Content-type': 'application/json'}).then((http.Response response) {

      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return MYResponse.fromJson(json.decode(response.body));
    });
  }

  HttpPostHome({Key key, this.post}) : super(key: key);
  static final CREATE_POST_URL = 'http://157.245.202.57:8080/mix555/api/auth/user/login';

  TextEditingController titleControler = TextEditingController();
  TextEditingController bodyControler =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "WEB SERVICE",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Create Post'),
          ),
          body: new Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: titleControler,
                  decoration: InputDecoration(
                      hintText: "title....", labelText: 'Post Title'),
                ),
                new TextField(
                  controller: bodyControler,
                  decoration: InputDecoration(
                      hintText: "body....", labelText: 'Post Body'),
                ),
                new RaisedButton(
                  onPressed: () async {
                    User user = User(
                        username: titleControler.text,
                        password: bodyControler.text);
                    MYResponse re = await createPost(CREATE_POST_URL,
                        body: user.toJson());
                    print(re.accessToken);
                  },
                  child: const Text("Create"),
                )
              ],
            ),
          )),
    );
  }
}