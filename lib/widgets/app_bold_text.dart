import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

class AppBoldText extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  const AppBoldText(this.data,
      {super.key,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 22.0,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            fontFamily: AppString.fontFamily,
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color));
  }
}
