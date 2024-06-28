import 'package:flutter/material.dart';

class AppShape {
  static const chatsCardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topRight: Radius.circular(14.0),
    topLeft: Radius.circular(14.0),
  ));
  static const profileOverviewCardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topRight: Radius.circular(18.0),
    topLeft: Radius.circular(18.0),
  ));
}
