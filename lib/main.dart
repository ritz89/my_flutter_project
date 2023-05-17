import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/splashscreen.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
