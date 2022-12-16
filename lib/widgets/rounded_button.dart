import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:const  EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
                backgroundColor: color,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
