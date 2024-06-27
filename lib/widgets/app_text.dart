import 'package:chatinc/constants/app_strings.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  const AppText(this.data,
      {super.key, this.fontWeight, this.fontSize, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        textAlign: textAlign,
        style: TextStyle(
            fontFamily: AppString.fontFamily,
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color));
  }
}
