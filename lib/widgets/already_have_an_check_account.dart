import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        login == true
            ? const Text("Don't have an Account ? ",
                style: TextStyle(color: kPrimaryColor))
            : const Text("Already have an Account ? ",
                style: TextStyle(color: kPrimaryColor)),
        GestureDetector(
          onTap: press,
          child: login == true
              ? const Text('Sign Up',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold))
              : const Text('Sign In',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}