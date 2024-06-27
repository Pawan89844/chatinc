import 'package:chatinc/constants/app_strings.dart';
import 'package:chatinc/module/home/tabs/all_chat_tab.dart';
import 'package:chatinc/module/home/tabs/archieve_chats_tab.dart';
import 'package:chatinc/module/home/tabs/family_chat_tab.dart';
import 'package:chatinc/module/home/tabs/office_chats_tab.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../profile/view/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.buttonColor,
            child: IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    )),
                icon: const Icon(Icons.person, color: Colors.white)),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBoldText('Pawan Kumar', fontSize: 18.0),
            Row(
              children: [
                Icon(Icons.cases_outlined),
                AppText(' At Work', fontSize: 16.0),
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 14.0, right: 8.0),
                    child: const AppBoldText('Chat')),
                SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: IconButton.filled(
                    onPressed: () {},
                    icon: const AppText('34', fontSize: 10.0),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    )),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.buttonColor)),
                      icon: const Icon(CupertinoIcons.bubble_middle_bottom,
                          color: Colors.white),
                      label: const AppText('New Chat', color: Colors.white)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: Card(
              surfaceTintColor: Colors.grey.shade600,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TabBar(
                      dividerHeight: 0.0,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black38,
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      labelStyle: const TextStyle(
                          fontFamily: AppString.fontFamily,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                      tabs: const [
                        Tab(text: 'All'),
                        Tab(text: 'Office'),
                        Tab(text: 'Family'),
                        Tab(text: 'Archive'),
                      ],
                      controller: _tabController,
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: _tabController,
                          physics: const BouncingScrollPhysics(),
                          children: const [
                            AllChatTab(),
                            OfficeChatsTab(),
                            FamilyChatsTab(),
                            ArchieveChatsTab(),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
