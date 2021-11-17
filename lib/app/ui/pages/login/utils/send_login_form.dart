import 'package:flutter/material.dart';
import 'package:movil181/app/ui/pages/login/login_page.dart' show loginProvider;
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:movil181/app/ui/widgets/dialogs/dialogs.dart';
import 'package:movil181/app/ui/widgets/dialogs/progress_dialog.dart';
import 'package:flutter_meedu/router.dart' as router;

Future<void> sendLoginForm(BuildContext context) async {
  final controller = loginProvider.read;
  final isValidForm = controller.formKey.currentState!.validate();

  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controller.submit();
    router.pop();
    if (response.error != null) {
      Dialogs.alert(
        context,
        title: "Error",
        content: response.error,
      );
    } else {
      router.pushReplacementNamed(Routes.HOME);
    }
  }
}
