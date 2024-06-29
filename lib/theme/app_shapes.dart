import 'package:chatinc/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppShape {
  static const chatsCardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0),
  ));
  static const profileOverviewCardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topRight: Radius.circular(18.0),
    topLeft: Radius.circular(18.0),
  ));

  static const kInputFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
      borderSide: BorderSide(color: Colors.black12));
}
