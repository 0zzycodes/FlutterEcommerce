// PACKAGES
import 'package:ecommerce/screens/Login.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
// SCREENS

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.secondaryColor,
      ),
      home: Login(),
    );
  }
}
