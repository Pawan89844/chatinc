import 'package:chatinc/module/home/view/home_view.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_elevated_button.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: const AppBoldText('Create your Profile'),
          ),
          const SizedBox(height: 10.0),
          const ListTile(
            leading: CircleAvatar(
                radius: 40.0, backgroundColor: AppColors.buttonColor),
            title: AppText('Pawan Kumar'),
            subtitle: AppText('21-2-199'),
            isThreeLine: true,
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Pawan Kumar',
                      isDense: true,
                      border: AppShape.kInputFieldBorder),
                ),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                      hintText: '21-02-1990',
                      isDense: true,
                      border: AppShape.kInputFieldBorder),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: AppElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      )),
                  text: 'Submit'))
        ],
      )),
    );
  }
}
