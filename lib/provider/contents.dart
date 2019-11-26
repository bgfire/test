import 'provider_imports.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<MyData>(context);
    return Container(
      child: Text(data.temptype),
    );
  }
}
