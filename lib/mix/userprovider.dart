import 'dart:convert';

import 'package:myanmar_baydin/mix/request.dart';
import 'package:myanmar_baydin/mix/response.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class UserProvider with ChangeNotifier {

  MYResponse loginResponse;
  String _errorMessage;
  bool _loading = false;

  Future<bool> Login(us) async {
    setLoading = true;

    MyRequests(us).fetchUser().then((data) {

      setLoading = false;

      if (data.statusCode == 200) {
        setResponse = MYResponse.fromJson(jsonDecode(data.body));
      }else{
        Map<String, dynamic> result = json.decode(data.body);
        setErrorMessage = result['message'];
      }
    });
    return isUser();
  }

  MYResponse get getResponse => loginResponse;

  set setResponse(MYResponse value) {
    loginResponse = value;
    notifyListeners();
  }

  String get getErrorMessage => _errorMessage;

  set setErrorMessage(String value) {
    _errorMessage = value;
    notifyListeners();
  }

  bool get getLoading => _loading;

  set setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool isUser() {
    return loginResponse != null ? true : false;
  }
}
