import 'package:flutter/material.dart';
import 'package:login_page/view/sing_up/widgets/bacground.dart';
import 'package:login_page/widgets/already_have_an_check_account.dart';
import 'package:login_page/widgets/login_view.dart';
import 'package:login_page/widgets/rounded_button.dart';
import 'package:login_page/widgets/rounded_input_textfield.dart';
import 'package:login_page/widgets/rounded_password_field.dart';

import '../../../constants/path_constants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGİN', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPath().svgPath(svgName: 'signup', heigth: size.height * 0.35),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputFileld(
              hintText: 'Your Mail',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ));
              },
              login: false,
            ),
            OrDivider()
          ],
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: [Expanded(child: Divider())],
      ),
    );
  }
}
