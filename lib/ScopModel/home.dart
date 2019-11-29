import 'package:flutter/material.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';
import 'package:scoped_model/scoped_model.dart';

import 'mystate.dart';

class ScopedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ScopedModel'),
        ),
        body: Center(
          child: ScopedModel<MyState>(
            model: MyState(),
            child: ScopedModelDescendant<MyState>(
              rebuildOnChange: true,
                builder: (context,child,model)=>Column(
                  children: <Widget>[
                    Text('${model.counterValue}'),
                    Center(
                      child: ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.add), onPressed: ()=>model.incrementCounter()),
                          IconButton(icon: Icon(Icons.remove), onPressed: ()=>model.decrementCounter())
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
