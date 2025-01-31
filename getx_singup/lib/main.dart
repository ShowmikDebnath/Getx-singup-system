import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_singup/views/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx Auth",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
      ),

      home: LoginScreen(),

    );
  }
}


