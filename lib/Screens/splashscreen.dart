import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:latihan4/Auth/controllers/auth_controller.dart';
import 'package:latihan4/Auth/pages/on_board.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final AuthManager authController = Get.put(AuthManager());

  Future<void> initializeSettings() async {
    authController.checkLogin();
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSettings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashContent();
        } else {
          if (snapshot.hasError) {
            return errorView(snapshot);
          } else {
            return const OnBoarding();
          }
        }
      },
    );
  }
}

Scaffold errorView(AsyncSnapshot<Object?> snapshot) {
  return Scaffold(body: Center(child: Text('Error: ${snapshot.error}')));
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueAccent,
              child: SvgPicture.asset(
                "assets/Rent.svg",
                height: 150,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "On-Journey Guides",
              style: TextStyle(
                  color: Color(0xFF2097F5),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Shaping Your Travel Experience",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 11,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
