import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/app_divider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  final Color color = AppColors.buttonColor;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: AppColors.buttonColor,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60.0,
                        alignment: Alignment.center,
                        // color: Colors.amber,
                        width: double.infinity,
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                top: 130.0,
                left: (MediaQuery.of(context).size.width / 2.0 - 59)
                    .floorToDouble(),
                child: const CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 60.0),
                ),
              ),
            ],
          ),
          // Center()
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: const AppBoldText('Pawan'),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 14.0,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5.0),
                  AppText('Online')
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: const AppText(
                  'Jangan sampai amal kita berkurang\nhanya karena kebecian',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            height: 80.0,
            width: (MediaQuery.of(context).size.width * .8),
            child: Card(
              surfaceTintColor: const Color(0xFFF9F9FA),
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.ellipses_bubble)),
                  const AppDivider(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(CupertinoIcons.phone)),
                  const AppDivider(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.video_camera)),
                  const AppDivider(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.contact_page_outlined)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          // Card(
          //   surfaceTintColor: const Color(0xFFF9F9FA),
          //   child: Column(
          //     children: [],
          //   ),
          // ),
        ],
      )),
    );
  }
}
