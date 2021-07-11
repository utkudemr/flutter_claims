import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refsample/models/claims.dart';
import 'package:refsample/models/permissions.dart';
import 'package:refsample/models/reflector.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<SecondPage> createState() => SecondPageState();
}

@reflector
class SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
  }

  @Claims("testa")
  void incrementCounter() {
    print("woaw woaw");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SecodPageü"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.red, // foreground
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('FlatButton with custom foreground/background'),
              )
            ],
          ),
        ),
        floatingActionButton:
            floatButton // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  @Claims("test2a")
  Widget get floatButton {
    return FloatingActionButton(
      onPressed: () async =>
          Permission.streamController.addMethod(await incrementCounter),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
