import 'package:scoped_model/scoped_model.dart';

class MyState extends Model{

  int _counter =0;

  int get counterValue => _counter;

  void incrementCounter(){
    _counter++;
    notifyListeners();
  }
  void decrementCounter(){
    _counter--;
    notifyListeners();
  }
}
