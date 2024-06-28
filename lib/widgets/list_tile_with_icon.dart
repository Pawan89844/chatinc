import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ListTileWithTextIcon extends StatelessWidget {
  final void Function()? onTap;
  final String tittle;
  final String iconTitle;
  const ListTileWithTextIcon(
      {super.key,
      required this.onTap,
      required this.tittle,
      required this.iconTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: AppBoldText(tittle, fontSize: 18.0),
      trailing: SizedBox(
        width: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppText(iconTitle, fontSize: 15.0, color: Colors.black38),
            const Icon(Icons.navigate_next, color: Colors.black38)
          ],
        ),
      ),
    );
  }
}
