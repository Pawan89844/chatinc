import 'package:chatinc/dummy/chats_list.dart';
import 'package:chatinc/module/home/model/chats_model.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllChatTab extends StatelessWidget {
  const AllChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 12.0),
      surfaceTintColor: Colors.white,
      elevation: 8.0,
      shape: AppShape.chatsCardShape,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 5.0),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.pin,
                            size: 14.0,
                          ),
                          const SizedBox(width: 5.0),
                          AppBoldText('Pinned',
                              fontSize: 14.0, color: Colors.grey.shade600),
                        ],
                      ),
                    ),
                    ListView.custom(
                      shrinkWrap: true,
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      childrenDelegate: SliverChildBuilderDelegate(
                        childCount: ChatsList.pinnedList.length,
                        (context, i) {
                          ChatsModel chats = ChatsList.pinnedList[i];
                          return ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: AppColors.buttonColor,
                              child: Icon(CupertinoIcons.person,
                                  color: Colors.white),
                            ),
                            title: AppBoldText(chats.name, fontSize: 18.0),
                            subtitle:
                                AppText(chats.lastMsg, color: Colors.black38),
                            trailing: AppText(
                              chats.lastMsgTime,
                              color: Colors.black38,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 5.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: AppBoldText('Conversation',
                          fontSize: 14.0, color: Colors.grey.shade600),
                    ),
                  ),
                  ListView.custom(
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    childrenDelegate: SliverChildBuilderDelegate(
                      childCount: ChatsList.chatsList.length,
                      (context, i) {
                        ChatsModel chats = ChatsList.chatsList[i];
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppColors.buttonColor,
                            child: Icon(CupertinoIcons.person,
                                color: Colors.white),
                          ),
                          title: AppBoldText(chats.name, fontSize: 18.0),
                          subtitle:
                              AppText(chats.lastMsg, color: Colors.black38),
                          trailing: AppText(
                            chats.lastMsgTime,
                            color: Colors.black38,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
