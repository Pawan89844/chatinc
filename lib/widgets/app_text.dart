import 'package:chatinc/constants/app_strings.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  const AppText(this.data, {super.key, this.fontWeight, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            fontFamily: AppString.fontFamily,
            fontWeight: fontWeight,
            fontSize: fontSize));
  }
}
