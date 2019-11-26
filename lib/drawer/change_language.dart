import 'package:myanmar_baydin/provider/home_pro.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class ChangeLanguage extends MaterialPageRoute<Null> {
  ChangeLanguage()
      : super(
      builder: (BuildContext buildContext) {
          return Scaffold(
            appBar: AppBar(
              leading: FlatButton.icon(onPressed: (){
                Navigator.of(buildContext).pop();
              }, icon: Icon(Icons.arrow_back), label: null),
              title: Text('Change Language'),
            ),
            body: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Change To English '),
                  trailing: Chip(label: Text('Zawgyi')),
                )
              ],
            ),
          );
        });
}
