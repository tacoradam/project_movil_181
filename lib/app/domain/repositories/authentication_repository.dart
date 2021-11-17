import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRepository {
  Future<User?> get user;
  Future<void> signOut();
  Future<SingInResponse> singInWithEmailAndPassword(
    String email,
    String password,
  );
}

class SingInResponse {
  final String? error;
  final User? user;

  SingInResponse(this.error, this.user);
}
