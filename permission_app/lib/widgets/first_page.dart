import 'dart:async';

import 'package:flutter/material.dart';
import 'package:refsample/models/claims.dart';
import 'package:refsample/models/permissions.dart';
import 'package:refsample/models/reflector.dart';
import 'package:refsample/widgets/secon_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

@reflector
class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    Permission.streamController = new StreamController(sync: true);
    Permission.stream = Permission.streamController.stream.asBroadcastStream();
    Permission.listen(context);
    super.initState();
  }

  
  void incrementCounter() {
    print("woaw");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              OutlinedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage())),
                child: Text("asd"),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton:
            floatButton // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  @Claims("clickButton")
  Widget get floatButton {
    return FloatingActionButton(
      onPressed: () async =>
          Permission.streamController.addMethod(await incrementCounter),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
