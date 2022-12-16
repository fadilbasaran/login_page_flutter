import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../view/login/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
      onChanged: onChanged,
      obscureText: true,
      obscuringCharacter: '•',
      decoration: const InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          )),
    ));
  }
}