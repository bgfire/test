import 'provider_imports.dart';

class HomeProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   var data = Provider.of<MyData>(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          CircleAvatar(backgroundColor: Colors.green,
            child: Text('${data.tempValue.toString()?? '0'}'),
          )
        ],
        centerTitle: true,
        title: Text('MyApp')),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Heading(),
            Contents(),
          ],
        ),
      ),
      floatingActionButton: FAB(),
      );

  }
}
