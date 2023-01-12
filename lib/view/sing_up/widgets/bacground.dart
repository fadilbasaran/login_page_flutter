import 'package:flutter/material.dart';

import '../../../constants/path_constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: ImagePath()
                .imageAsset(imageName: 'signup_top', width: size.width * 0.30),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ImagePath()
                .imageAsset(imageName: 'main_bottom', width: size.width * 0.20),
          ),
          child
        ],
      ),
    );
  }
}
