import 'provider_imports.dart';

class FAB extends StatelessWidget {
int value;
FAB({this.value});
  Color moveToNext(MyData data) {
    return data.temptype == "celcius" ? Colors.green : Colors.red;
  }

  @override
  Widget build(BuildContext context) {

    var data = Provider.of<MyData>(context);
   // var lan = EasyLocalizationProvider.of(context).data;
    return FloatingActionButton(
        tooltip: 'Change Value',
        backgroundColor: moveToNext(data),
        child: Icon(Icons.change_history),
        onPressed: () {
          //lan.changeLocale(Locale('my','MM'));
          String mData = data.temptype == "celcius" ? "far" : "celcius";
          data.tempType = mData;
          data.tempValue++;
          //print(data.tempValue++);


        });
  }
}
