import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../view/login/widgets/text_field_container.dart';

class RoundedInputFileld extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputFileld({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}