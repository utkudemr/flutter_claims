# permission_app

Flutter User-Claim system with
<a href="https://pub.dev/packages/reflectable" target="_blank">reflectable</a>

## Getting Started

- Create a flutter project.

- Add reflectable package in your project.

- In base widget initial stream, stream controller and listen them with static properties.

## About Project

- Create a class for data annnotation with flutter <a href="https://api.flutter.dev/flutter/meta/meta-library.html" target="_blank">meta</a>

```
class Claims {
  final String claimName;

  const Claims(this.claimName);
}
```
- and adding top of the method.

```

 @Claims("clickButton")
  Widget get floatButton {
    return FloatingActionButton(
      onPressed: () async =>
          Permission.streamController.addMethod(await incrementCounter),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
```
- If logged user has "clickButton" claim incrementCounter will work. If the user does not have claim a warning message will appear.

- We have an extension for StreamController.add() 

```

extension StreamControllerAdd on StreamController<dynamic> {
  void addMethod(dynamic event) {
    Permission.manager.getMethodAndClassName();
    this.add(event);
  }
}
```
- getMethodAndClassName get triggered class and methodName with StackTrace.

```

 @override
  void getMethodAndClassName() {
    var stack = StackTrace.current;
    var frames = stack.toString().split("\n");
    var indexOfWhiteSpace = frames[2].indexOf(' ');
    var subStr = frames[2].substring(indexOfWhiteSpace);
    var indexOfFunction = subStr.indexOf(RegExp(r'[A-Za-z0-9]'));
    subStr = subStr.substring(indexOfFunction);
    indexOfWhiteSpace = subStr.indexOf(' ');
    subStr = subStr.substring(0, indexOfWhiteSpace);
    var afterCommand = subStr.split('.');
    methodName = afterCommand[1];
    className = afterCommand[0];
  }
```
- And we listen like

    
```

   static StreamSubscription<dynamic> listen(BuildContext context) {
    return stream.listen((event) async {
      await manager.permissionControl(event, context);
    });
  }
```
- permissionControl compare Logged User's claim and method's claim

```
 @override
  Future<UserClaim> permissionControl(
      VoidCallback parameterAsFunction, BuildContext context) async {
    UserClaim result;
    try {
      result = await isClaimExist(getClaimName());
      if (result.claimList != null) {
        parameterAsFunction();
      } else {
        final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      return result;
    } catch (e) {
      return result;
    }
  }

```
- When the new method created with claim header, just run with terminal this code.
```
 flutter packages pub run build_runner build DIR

```

- And don't forget add reflector header selected class 
```
 @reflector
 class MyHomePageState extends State<MyHomePage> 

```

