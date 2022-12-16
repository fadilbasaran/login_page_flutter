import 'package:flutter/material.dart';
import 'package:login_page/constants/app_constants.dart';
import 'package:login_page/view/welcome/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      home: const WelcomeView(),
    );
  }
}
