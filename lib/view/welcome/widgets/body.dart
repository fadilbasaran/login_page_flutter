import 'package:flutter/material.dart';
import 'package:login_page/constants/app_constants.dart';
import 'package:login_page/constants/path_constants.dart';
import 'package:login_page/widgets/login_view.dart';

import '../../../widgets/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgrund(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO EDU',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPath().svgPath(svgName: 'chat', heigth: size.height * 0.45),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: 'LOGİN',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginView()));
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {},
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
