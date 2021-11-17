import 'package:flutter/material.dart';
import 'package:flutter_meedu/state.dart';
import 'package:movil181/app/ui/pages/login/controller/login_controller.dart';
import 'package:movil181/app/ui/pages/login/utils/send_login_form.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:movil181/app/ui/widgets/form.dart';
import 'package:movil181/app/ui/widgets/logo.dart';
import 'package:movil181/app/utils/validator_form.dart';
import 'package:flutter_meedu/router.dart' as router;

import 'package:flutter_meedu/meedu.dart';

final loginProvider = SimpleProvider(
  (_) => LoginController(),
);

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<LoginController>(
      provider: loginProvider,
      builder: (_, controller) {
        return Scaffold(
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: ListView(
              children: [
                SingleChildScrollView(
                  //controller: controller,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Logo().logo(),
                          SizedBox(height: 20),
                          Text(
                            "Login",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Monserrat',
                              fontSize: 28,
                              color: Colors.teal[800],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Form(
                        key: controller.formKey,
                        child: Column(
                          children: <Widget>[
                            FormRegister(
                              label: 'Email',
                              onChanged: controller.onEmailChanged,
                              validator: (text) {
                                if (ValidatorForm().isValidEmail(text!)) {
                                  return null;
                                }
                                return "Email invalido";
                              },
                              isPassword: false,
                              icon: Icon(Icons.alternate_email),
                              icon2: Icons.email,
                            ),
                            SizedBox(height: 12),
                            FormRegister(
                              label: 'Contraseña',
                              onChanged: controller.onPasswordChanged,
                              validator: (text) {
                                if (text!.trim().length >= 8) {
                                  return null;
                                }
                                return "Contraseña invalida";
                              },
                              isPassword: true,
                              icon: Icon(Icons.lock),
                            ),
                            SizedBox(height: 25),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              child: ElevatedButton(
                                onPressed: () => sendLoginForm(context),
                                child: Text('Confirmar'),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        children: [
                          TextButton(
                            child: Text(
                              '¿Olvido su contraseña?',
                              style: TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () => router.pushNamed(Routes.REGISTER),
                          ),
                          Container(
                            height: 60,
                            width: 280,
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 10.0,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              onPressed: () =>
                                  router.pushNamed(Routes.REGISTER),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image:
                                          AssetImage("assets/google_logo.png"),
                                      height: 30.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30.0),
                                      child: Text(
                                        'Acceder con google',
                                        style: TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontSize: 17,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.w500,
                                          backgroundColor: Colors.transparent,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 280,
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 10.0,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              onPressed: () =>
                                  router.pushNamed(Routes.REGISTER),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/facebook.png'),
                                      height: 30.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30.0),
                                      child: Text(
                                        'Acceder con Facebook',
                                        style: TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontSize: 17,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.w500,
                                          backgroundColor: Colors.transparent,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            child: Text(
                              'Registrarse',
                              style: TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () => router.pushNamed(Routes.REGISTER),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
