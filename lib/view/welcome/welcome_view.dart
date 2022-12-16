import 'package:flutter/material.dart';
import 'package:login_page/view/welcome/widgets/body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}