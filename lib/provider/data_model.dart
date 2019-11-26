import 'package:flutter/foundation.dart';

class MyData with ChangeNotifier{
  String _tempType = "celcius";
  int _tempValue = 0;

  int get tempValue => _tempValue;

  String get temptype => _tempType;

  set tempValue(int tempV) {
    _tempValue = tempV;
    notifyListeners();
  }

  set tempType(String newType) {
    _tempType = newType;
    notifyListeners();
  }
}
