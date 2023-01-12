import 'package:flutter/material.dart';
import 'package:login_page/view/login/widgets/background.dart';
import 'package:login_page/view/sing_up/sign_up_view.dart';
import 'package:login_page/widgets/rounded_button.dart';
import '../../../constants/path_constants.dart';
import '../../../widgets/already_have_an_check_account.dart';
import '../../../widgets/rounded_input_textfield.dart';
import '../../../widgets/rounded_password_field.dart';

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
            SvgPath().svgPath(svgName: 'login', heigth: size.height * 0.35),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputFileld(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: 'LOGIN', press: () {}),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpView()));
              },
            )
          ],
        ),
      ),
    );
  }
}
