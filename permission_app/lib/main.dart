import 'package:flutter/material.dart';
import 'package:refsample/models/permissions.dart';
import 'package:refsample/models/reflector.dart';
import 'main.reflectable.dart';

import 'models/claim.dart';
import 'models/claims.dart';
import 'models/user_claim.dart';

void main() {
  initializeReflectable();
  Permission.authorizedUsersClaimList=<UserClaim>[];
  Permission.authorizedUsersClaimList.add(UserClaim(claimList:[Claim(type:"clickButton",value:true)]));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

@reflector
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

@reflector
class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @Claims("test")
  void incrementCounter() {
    Permission.permissionControl(context, () {
      setState(() {
        _counter++;
      });
    });
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
