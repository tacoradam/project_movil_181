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
  final String? error;
  final User? user;

  SingUpResponse(this.error, this.user);
}
