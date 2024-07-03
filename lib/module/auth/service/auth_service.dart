import 'package:firebase_auth/firebase_auth.dart';

abstract class Authentication {
  void sendOTP(String phoneNumber);
  // void codeSent(String verificationId, int? forceResendingToken);
}

class AuthService implements Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void sendOTP(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: _verificationCompleted,
      verificationFailed: _verificationFailed,
      codeSent: _codeSent,
      codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout,
    );
  }

  void _verificationCompleted(PhoneAuthCredential phoneAuthCredential) {}

  void _verificationFailed(FirebaseAuthException error) {}

  void _codeSent(String verificationId, int? forceResendingToken) {}

  void _codeAutoRetrievalTimeout(String verificationId) {}
}
