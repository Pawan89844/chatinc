import 'package:chatinc/module/home/view/home_view.dart';
import 'package:flutter/material.dart';

class ChatInc extends StatelessWidget {
  const ChatInc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF0F1F3),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFF0F1F3))),
      home: const HomeView(),
    );
  }
}
