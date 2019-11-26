import 'package:shared_preferences/shared_preferences.dart';

class GlobalData {

  Future saveData(String name) async {
    final data = await SharedPreferences.getInstance();
    data.setString('name', name);
  }

  Future saveNameList(List<String> nameList) async {
    final data = await SharedPreferences.getInstance();
    data.setStringList('namelist', nameList);
  }

  Future<String> getData() async {
    final data = await SharedPreferences.getInstance();
    return data.getString('name');
  }
}
