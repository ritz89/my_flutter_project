import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan4/Auth/controllers/auth_controller.dart';
import 'package:latihan4/OnBoarding/pages/dashboard.dart';

import 'login_view.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    AuthManager authManager = Get.find();
    return Obx(() {
      return authManager.isLogged.value ? const Dashboard() : const LoginView();
    });
  }
}
