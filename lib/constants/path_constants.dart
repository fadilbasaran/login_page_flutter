import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePath {
  Image imageAsset({String? imageName, double? width}) => Image.asset(
        'assets/images/$imageName.png',
        width: width,
      );
}

class SvgPath {
  SvgPicture svgPath({String? svgName, double? heigth}) => SvgPicture.asset(
        'assets/icons/$svgName.svg',
        height: heigth,
      );
}
