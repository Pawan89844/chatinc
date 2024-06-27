import 'package:chatinc/dummy/chat_list.dart';
import 'package:chatinc/module/profile/view/profile_view.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:chatinc/widgets/chat_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 5.0),
                child: const AppBoldText('Pawan', fontSize: 20.0)),
            const Row(
              children: [
                Icon(Icons.circle, color: Colors.green, size: 12.0),
                SizedBox(width: 5.0),
                AppText('Online', fontSize: 14.0)
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.video_camera)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.phone)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.ellipsis_vertical)),
          const SizedBox(width: 8.0),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 15.0),
          Expanded(
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              // surfaceTintColor: const Color(0xFFFBFBFC),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                                height: 1.0,
                                decoration:
                                    const BoxDecoration(color: Colors.black12)),
                          ),
                          const SizedBox(width: 10.0),
                          const AppText('Today'),
                          const SizedBox(width: 10.0),
                          Flexible(
                            child: Container(
                              height: 1.0,
                              decoration:
                                  const BoxDecoration(color: Colors.black12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...ChatList.chats.map((chat) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3.0),
                          child: CustomPaint(
                            painter: ChatBubble(
                                color: chat.areYou
                                    ? AppColors.buttonColor
                                    : Colors.white,
                                alignment: chat.areYou
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft),
                            child: Container(
                              alignment: chat.areYou
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              color: chat.areYou
                                  ? AppColors.buttonColor
                                  : Colors.white,
                              // surfaceTintColor:
                              //     chat.areYou ? null : Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: chat.areYou
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                                  children: [
                                    AppText(chat.message,
                                        color:
                                            chat.areYou ? Colors.white : null),
                                    if (chat.timeStamp != null) ...[
                                      Align(
                                          alignment: chat.areYou
                                              ? Alignment.centerRight
                                              : Alignment.centerLeft,
                                          child: AppText(
                                            chat.timeStamp.toString(),
                                            color: chat.areYou
                                                ? Colors.white
                                                : null,
                                          )),
                                    ]
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 75.0,
            child: Card(
              elevation: 5.0,
              margin: const EdgeInsets.symmetric(horizontal: 14.0),
              surfaceTintColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Align(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add, size: 25.0)),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: AppColors.buttonColor,
                              size: 22.0,
                            )),
                      ),
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                      hintText: 'Enter your message'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }
}
