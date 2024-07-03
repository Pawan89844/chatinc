import 'package:chatinc/module/auth/view%20model/auth_view_model.dart';
import 'package:chatinc/module/auth/view/otp_view.dart';
import 'package:chatinc/module/auth/view/signup_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class Authentication {
  void sendOTP(BuildContext context,
      {String? phoneNumber, String? verificationCode});

  void dispose();
}

class AuthService implements Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _verificationId = '';

  static final AuthService _instance = AuthService._internal();

  AuthService._internal();

  factory AuthService() => _instance;

  @override
  void sendOTP(BuildContext context,
      {String? phoneNumber, String? verificationCode}) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: '+91$phoneNumber',
      verificationCompleted: (phoneAuthCredential) => _verificationCompleted(
          phoneAuthCredential, verificationCode, context),
      verificationFailed: _verificationFailed,
      codeSent: (verificationId, forceResendingToken) =>
          _codeSent(verificationId, forceResendingToken, context),
      codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout,
    );
  }

  void _verificationCompleted(PhoneAuthCredential phoneAuthCredential,
      String? verificationCode, BuildContext context) {
    if (verificationCode == phoneAuthCredential.smsCode &&
        _verificationId == phoneAuthCredential.verificationId) {
      // print('Verification: $_verificationId, $verificationCode');
      Navigator.pushReplacement(context, _otpPage(child: const SignUpView()));
    }
  }

  void _verificationFailed(FirebaseAuthException error) {
    print('Firebase Error: ${error.message}');
  }

  void _codeSent(
      String verificationId, int? forceResendingToken, BuildContext context) {
    _verificationId = verificationId;
    if (_verificationId.isNotEmpty) {
      _navigate(context);
    }
  }

  void _codeAutoRetrievalTimeout(String verificationId) {}

  void _navigate(BuildContext context) {
    Navigator.push(context, _otpPage(child: const OTPView()));
  }

  MaterialPageRoute _otpPage({Widget? child}) {
    return MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
              create: (context) => AuthViewModel(),
              child: child,
            ));
  }

  @override
  void dispose() {
    FlutterMemoryAllocations.instance.dispatchObjectDisposed(object: this);
  }
}
