import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const AppElevatedButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonColor),
        child: AppText(text, color: Colors.white));
  }
}
