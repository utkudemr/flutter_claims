import 'package:flutter/cupertino.dart';
import 'package:reflectable/mirrors.dart';

import 'claims.dart';
import 'reflector.dart';
import 'user_claim.dart';

class Permission {
  static bool paymentPageLockIconStatus =
      false; //ödeme sayfasındaki kilit ikonu
  static bool productPageLockIconStatus =
      false; //barcode sayfasındaki kilit ikonu
  static bool initialPage =
      true; //sayfa ilk açıldığında işlem yapılmış mı kontrolü

  static String claimName = "";
  static List<UserClaim> authorizedUsersClaimList = <UserClaim>[]; //yetkili
  static String className = ""; //tetiklenen className bilgisi
  static String methodName = ""; //tetiklenen metod bilgisi

  static Future<UserClaim> permissionControl(
      BuildContext context, VoidCallback parameterAsFunction) async {
    UserClaim result;
    try {
      claimName = getClaimName();
      result = await isClaimExist(claimName);
      if (result.claimList != null) {
        parameterAsFunction();
      } else {
        Permission.initialPage = false;
        print("claim not exist");
      }
      return result;
    } catch (e) {
      //show alert message
      return result;
    }
  }

  static void clear() {
    paymentPageLockIconStatus = false;
    productPageLockIconStatus = false;
    initialPage = true;
    authorizedUsersClaimList.removeWhere((item) => item.isDefaultUser == false);
  }

  static Future<UserClaim> isClaimExist(String claimName) async {
    UserClaim userClaim = UserClaim();
    if (authorizedUsersClaimList.length != 0) {
      authorizedUsersClaimList.any((element) {
        var isExist = element.claimList
            .where(
                (element) => element.type == claimName && element.value == true)
            .isNotEmpty; //claim varsa true yoksa false dönüyor.
        if (isExist) {
          userClaim = element;
          return true;
        }
        return false;
      });
      return userClaim;
    }
    return userClaim;
  }

  static String getClaimName() {
    parseTrace(); //tetiklenen metodun ismini ve className bilgisini set eder.
    var libraryMirrorList = reflector.libraries.values
        .toList(); //reflector kullanılan sınıfları listeler
    var libraryMirror = libraryMirrorList
        .firstWhere((element) => element.declarations.keys.contains(className));
    ClassMirror classMirror = libraryMirror.declarations[className];
    return (classMirror.instanceMembers[methodName].metadata[0] as Claims)
        .claimName;
  }

  static void parseTrace() {
    var stack = StackTrace.current;
    var frames = stack.toString().split("\n");
    var indexOfWhiteSpace = frames[3].indexOf(' ');
    var subStr = frames[3].substring(indexOfWhiteSpace);
    var indexOfFunction = subStr.indexOf(RegExp(r'[A-Za-z0-9]'));
    subStr = subStr.substring(indexOfFunction);
    indexOfWhiteSpace = subStr.indexOf(' ');
    subStr = subStr.substring(0, indexOfWhiteSpace);
    var afterCommand = subStr.split('.');
    methodName = afterCommand[1];
    className = afterCommand[0];
  }
}
