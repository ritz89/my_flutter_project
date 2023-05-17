import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthManager authManager = Get.find();

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Login View'),
          TextButton(
              onPressed: () {
                authManager.login('token login');
              },
              child: const Text("Login"))
        ],
      )),
    );
  }
}
