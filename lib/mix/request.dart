import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myanmar_baydin/mix/response.dart';
import 'package:myanmar_baydin/mix/user.dart';

class MyRequests {

  User user;
  String baseUrl = "http://157.245.202.57:8080/mix555/api/auth/user/login";
  Map requestHeaders = {
    'Content-type': 'application/json',
  };

  MyRequests(this.user);

  Future<http.Response> fetchUser() async {
    return http.post(baseUrl, body: jsonEncode(user), headers: {'Content-type': 'application/json'});
  }

}
