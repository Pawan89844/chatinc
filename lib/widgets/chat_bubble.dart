import 'package:chatinc/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BubblePainter extends CustomPainter {
  final bool areYou;
  BubblePainter(this.areYou);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = areYou ? AppColors.buttonColor : Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(18, 0)
      ..lineTo(size.width - 18, 0)
      ..quadraticBezierTo(size.width, 0, size.width, 18)
      ..lineTo(size.width, size.height - 18)
      ..quadraticBezierTo(
          size.width, size.height, size.width - 18, size.height);

    if (areYou) {
      path
        ..lineTo(size.width - 8, size.height + 14)
        ..lineTo(size.width - 34, size.height)
        ..lineTo(size.width - 44, size.height);
    }

    path
      ..lineTo(18, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - 18)
      ..lineTo(0, 14)
      ..quadraticBezierTo(0, 0, 18, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
