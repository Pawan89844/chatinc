import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

class AppBoldText extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  const AppBoldText(this.data,
      {super.key, this.fontWeight = FontWeight.bold, this.fontSize = 18.0});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            fontFamily: AppString.fontFamily,
            fontWeight: fontWeight,
            fontSize: fontSize));
  }
}
