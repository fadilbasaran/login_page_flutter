import 'package:flutter/material.dart';

import '../../../constants/path_constants.dart';

class Backgrund extends StatelessWidget {
  final Widget child;
  const Backgrund({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: ImagePath()
                  .imageAsset(imageName: 'main_top', width: size.width * 0.3)),
          Positioned(
              bottom: 0,
              left: 0,
              child: ImagePath().imageAsset(
                  imageName: 'main_bottom', width: size.width * 0.21)),
          child
        ],
      ),
    );
  }
}
