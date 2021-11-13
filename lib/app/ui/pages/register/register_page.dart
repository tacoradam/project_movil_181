import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:movil181/app/ui/pages/register/controller/register_controller.dart';
import 'package:movil181/app/ui/pages/register/controller/register_state.dart';
import 'package:movil181/app/ui/pages/register/utils/send_register_form.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:movil181/app/ui/widgets/form.dart';
import 'package:movil181/app/utils/validator_form.dart';
import 'package:flutter_meedu/router.dart' as router;

final registerProvider = StateProvider<RegisterController, RegisterState>(
  (_) => RegisterController(),
);

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: ListView(
        children: [
          SingleChildScrollView(
            //controller: controller,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Center(
                      child: FadeInImage(
                        placeholder: AssetImage('assets/Imagen3.png'),
                        width: 180,
                        image: AssetImage('assets/Imagen3.png'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Registro",
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
                SizedBox(height: 50),
                ProviderListener<RegisterController>(
                  provider: registerProvider,
                  builder: (_, controller) {
                    return Form(
                      key: controller.formKey,
                      child: Column(
                        children: <Widget>[
                          FormRegister(
                            label: 'Email',
                            onChanged: controller.onEmailChanged,
                            isPassword: false,
                            icon: Icon(Icons.alternate_email),
                            icon2: Icons.email,
                            validator: (text) {
                              print("text $text");
                              if (text == null) return null;

                              return ValidatorForm().isValidEmail(text)
                                  ? null
                                  : "Correo invalido";
                            },
                          ),
                          SizedBox(height: 20),
                          FormRegister(
                            label: 'Nombre',
                            onChanged: controller.onNameChanged,
                            isPassword: false,
                            icon: Icon(Icons.accessibility),
                            icon2: Icons.account_circle,
                            validator: (text) {
                              if (text == null) return null;
                              return ValidatorForm().isValidName(text)
                                  ? null
                                  : "Nombre invalido";
                            },
                          ),
                          SizedBox(height: 20),
                          FormRegister(
                            label: 'Contraseña',
                            onChanged: controller.onPasswordChanged,
                            isPassword: true,
                            icon: Icon(Icons.lock),
                            validator: (text) {
                              if (text == null) return null;
                              if (text.trim().length >= 8) {
                                return null;
                              }
                              return "invalid password";
                            },
                          ),
                          SizedBox(height: 20),
                          Consumer(
                            builder: (_, ref, __) {
                              final controller = ref.watch(
                                  registerProvider.select((_) => _.password));
                              return FormRegister(
                                label: 'Confirmar contraseña',
                                onChanged: controller.onVPasswordChanged,
                                isPassword: true,
                                icon: Icon(Icons.lock),
                                validator: (text) {
                                  if (text == null) return null;

                                  if (controller.state.password != text) {
                                    return "Las contraseñas no coinciden";
                                  }
                                  if (text.trim().length >= 8) {
                                    return null;
                                  }
                                  return "invalid password";
                                },
                              );
                            },
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: ElevatedButton(
                              onPressed: () => sendRegisterForm(context),
                              child: const Text('Registrar'),
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
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: ElevatedButton(
                              onPressed: () => router.pushNamed(Routes.HOME),
                              child: Text('Ir a Home Temp'),
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
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
