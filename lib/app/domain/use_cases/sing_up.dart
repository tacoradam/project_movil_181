import 'package:firebase_auth/firebase_auth.dart';

class SingUpData {
  final String name, email, password;

  SingUpData({
    required this.name,
    required this.email,
    required this.password,
  });
}

class SingUpResponse {
  final SingUpError? error;
  final User? user;

  SingUpResponse(this.error, this.user);
}

parseStringToSingUpError(String text) {
  switch (text) {
    case "email-already-in-use":
      return SingUpError.emailAlreadyInUse;

    case "weak-Password":
      return SingUpError.weakPassword;
    default:
      return SingUpError.unKnown;
  }
}

enum SingUpError { emailAlreadyInUse, weakPassword, unKnown }
