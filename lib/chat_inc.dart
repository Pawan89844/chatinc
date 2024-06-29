import 'package:chatinc/module/auth/view/login_view.dart';
import 'package:chatinc/module/home/view/home_view.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ChatInc extends StatelessWidget {
  const ChatInc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFF0F1F3))),
      home: LoginView(),
    );
  }
}
