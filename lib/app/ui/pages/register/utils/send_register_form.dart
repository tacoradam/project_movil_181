import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:movil181/app/ui/routes/routes.dart';

import '../register_page.dart' show registerProvider;

Future<void> sendRegisterForm(BuildContext context) async {
  final controller = registerProvider.read;

  final isValidForm = controller.formKey.currentState!.validate();

  if (isValidForm) {
    final response = await controller.submit();
    if (response.error != null) {
    } else {
      router.pushNamedAndRemoveUntil(Routes.HOME);
    }
  }
}
