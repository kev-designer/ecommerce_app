import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'Pages/Login/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreenView(
        navigateRoute: const EcommerceApp(),
        imageSrc: "assets/logo/Logo.png",
        imageSize: 150,
        backgroundColor: ColorData.primary,
        speed: 1,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({Key key}) : super(key: key);

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartScreen(),
    );
  }
}
