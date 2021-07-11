import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

import 'claims.dart';
import 'reflector.dart';
import 'user_claim.dart';

abstract class IPermission {
  Future<UserClaim> permissionControl(
      VoidCallback parameterAsFunction, BuildContext context);
  void clear();
  Future<UserClaim> isClaimExist(String claimName);
  String getClaimName();
  void getMethodAndClassName();
}

class PermissionManager extends IPermission {
  List<UserClaim> authorizedUsersClaimList = <UserClaim>[];
  String className = "";
  String methodName = "";

  @override
  void clear() {
    authorizedUsersClaimList.removeWhere((item) => item.isDefaultUser == false);
  }

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

  @override
  Future<UserClaim> isClaimExist(String claimName) {
    UserClaim userClaim = UserClaim();
    if (authorizedUsersClaimList.length != 0) {
      authorizedUsersClaimList.any((element) {
        var isExist = element.claimList
            .where(
                (element) => element.type == claimName && element.value == true)
            .isNotEmpty;
        if (isExist) {
          userClaim = element;
          return true;
        }
        return false;
      });
      return Future.value(userClaim);
    }
    return Future.value(userClaim);
  }

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

  @override
  String getClaimName() {
    var libraryMirrorList = reflector.libraries.values.toList();
    var libraryMirror = libraryMirrorList
        .firstWhere((element) => element.declarations.keys.contains(className));
    ClassMirror classMirror = libraryMirror.declarations[className];
    return (classMirror.instanceMembers[methodName].metadata[0] as Claims)
        .claimName;
  }
}

class Permission{
  static PermissionManager manager=PermissionManager();
  static Stream<dynamic> stream;
  static StreamController<dynamic> streamController;
  static StreamSubscription<dynamic> listen(BuildContext context) {
    return stream.listen((event) async {
      await manager.permissionControl(event, context);
    });
  }
}

extension StreamControllerAdd on StreamController<dynamic> {
  void addMethod(dynamic event) {
    Permission.manager.getMethodAndClassName();
    this.add(event);
  }
}
