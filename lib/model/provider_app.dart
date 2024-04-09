import 'package:certification_app/model/user_info.dart';
import 'package:flutter/foundation.dart';
class ProviderApp with ChangeNotifier {
  String verificationID = '';
  UserInformation userInfo = UserInformation();

  void changeNotifierUserInfo (UserInformation userInfo) {
    this.userInfo=userInfo;
    notifyListeners();
  }
  void changeNotifierVerificationID(String verificationID) {
    this.verificationID=verificationID;
    notifyListeners();
  }


}
