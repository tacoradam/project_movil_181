abstract class SignUpRepository {}

class SingUpData {
  final String name, lastname, email, password;

  SingUpData({
    required this.name,
    required this.lastname,
    required this.email,
    required this.password,
  });
}
