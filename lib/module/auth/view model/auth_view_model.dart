import 'package:chatinc/module/auth/service/auth_service.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _service = AuthService();
  String otp = '';

  void sendOTP(BuildContext context,
      {String? mobileNo, String? verificationCode}) {
    _service.sendOTP(context,
        phoneNumber: mobileNo, verificationCode: verificationCode);
    notifyListeners();
  }

  void setOTP(String value) {
    otp += value;
    print('Value: $value');
    notifyListeners();
  }

  void verifyOTP(BuildContext context, String otp) {
    _service.verifyOTP(context, otp);
  }
}
