import 'package:flutter/material.dart';
import 'package:refsample/models/permissions.dart';
import 'package:refsample/widgets/first_page.dart';
import 'main.reflectable.dart';
import 'models/claim.dart';
import 'models/user_claim.dart';

void main() {
  initializeReflectable();
  Permission.manager.authorizedUsersClaimList
      .add(UserClaim(claimList: [Claim(type: "clickButton", value: true)]));
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
