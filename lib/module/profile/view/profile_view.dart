import 'package:chatinc/module/profile/tabs/media_tab.dart';
import 'package:chatinc/module/profile/tabs/overview_tab.dart';
import 'package:chatinc/module/profile/tabs/starred_tab.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_strings.dart';
import '../../../widgets/app_divider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  final Color color = AppColors.buttonColor;
  late TabController _tabController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _changeIndex(int value) {
    _selectedTab = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
    print('Selected Index: $_selectedTab');
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.phone)),
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
            SizedBox(
              height: _selectedTab == 2 ? 400.0 : 304.0,
              child: Card(
                surfaceTintColor: const Color(0xFFF9F9FA),
                shape: AppShape.profileOverviewCardShape,
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TabBar(
                          controller: _tabController,
                          dividerHeight: 0.0,
                          onTap: _changeIndex,
                          indicatorColor: Colors.transparent,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black38,
                          unselectedLabelStyle: const TextStyle(
                              fontFamily: AppString.fontFamily, fontSize: 16.0),
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          labelStyle: const TextStyle(
                              fontFamily: AppString.fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                          tabs: const [
                            Tab(text: 'Overview'),
                            Tab(text: 'Starred'),
                            Tab(text: 'Media')
                          ]),
                      Expanded(
                          child: TabBarView(
                              controller: _tabController,
                              physics: const BouncingScrollPhysics(),
                              children: const [
                            OverviewTab(),
                            StarredTab(),
                            MediaTab(),
                          ])),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
