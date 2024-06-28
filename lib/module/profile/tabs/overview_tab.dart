import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/list_tile_with_icon.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      // height: 304.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ListTile(
              title: AppBoldText('Phone Number', fontSize: 18.0),
              subtitle: AppText('0812 - 3456 - 7890'),
            ),
            ListTile(
              title: const AppBoldText('Nickname', fontSize: 18.0),
              subtitle: const AppText('@emmm122'),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.qrcode_viewfinder)),
            ),
            const Divider(color: Colors.black12),
            ListTileWithTextIcon(
                onTap: () {}, tittle: 'Notification', iconTitle: 'Priority')
          ],
        ),
      ),
    );
  }
}
