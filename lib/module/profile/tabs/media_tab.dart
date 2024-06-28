import 'package:chatinc/widgets/list_tile_with_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MediaTab extends StatelessWidget {
  const MediaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Column(
            children: [
              ListTileWithTextIcon(
                  onTap: () {}, tittle: 'Media', iconTitle: '332'),
              Container(
                height: 120.0,
                padding: const EdgeInsets.only(left: 12.0),
                // color: Colors.blue,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                        height: 70.0,
                        width: 90.0,
                        child: Card(
                          surfaceTintColor: Colors.blue,
                        ));
                  },
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTileWithTextIcon(
                  onTap: () {}, tittle: 'Files', iconTitle: '21'),
              Container(
                height: 120.0,
                padding: const EdgeInsets.only(left: 12.0),
                // color: Colors.blue,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                        height: 70.0,
                        width: 80.0,
                        child: Card(
                          surfaceTintColor: Colors.blue,
                        ));
                  },
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTileWithTextIcon(
                  onTap: () {}, tittle: 'Contact', iconTitle: '11'),
              ListTileWithTextIcon(
                  onTap: () {}, tittle: 'Links', iconTitle: '21'),
              ListTileWithTextIcon(
                  onTap: () {}, tittle: 'Audio', iconTitle: '11')
            ],
          )
        ],
      ),
    );
  }
}
