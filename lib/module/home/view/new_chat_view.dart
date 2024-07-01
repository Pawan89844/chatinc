import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';

class NewChatView extends StatelessWidget {
  const NewChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(),
            title: AppText('Contact'),
            subtitle: AppText('Sub contact'),
          );
        },
      )),
    );
  }
}
