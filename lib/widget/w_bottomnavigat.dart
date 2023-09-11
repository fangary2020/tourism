import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class WidgetBottomNavigation extends StatelessWidget {
  const WidgetBottomNavigation({
    super.key,
    required this.currentSelected,
    required this.callBack,
  });
  final int currentSelected;
  final void Function(int index) callBack;
  @override
  Widget build(BuildContext context) {
    return WaterDropNavBar(
      selectedIndex: currentSelected,
      waterDropColor: Colors.purple,
      onItemSelected: callBack,
      barItems: [
        // index number 0
        BarItem(
          filledIcon: Icons.article,
          outlinedIcon: Icons.article_outlined,
        ),
        // index number 1
        BarItem(
          filledIcon: Icons.video_collection_rounded,
          outlinedIcon: Icons.video_collection_outlined,
        ),
        // index number 2
        BarItem(
          filledIcon: Icons.favorite_rounded,
          outlinedIcon: Icons.favorite_border_rounded,
        ),
        // index number 3
        BarItem(
          filledIcon: CupertinoIcons.cloud_upload_fill,
          outlinedIcon: CupertinoIcons.cloud_upload,
        ),
      ],
    );
  }
}