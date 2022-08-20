import 'package:flutter/material.dart';
import 'package:food_app/app/utils/app_colors.dart';
import 'package:food_app/gen/fonts.gen.dart';

import '../../gen/assets.gen.dart';
import 'base_stateless_widget.dart';

class BottomNavigationWidget extends BaseStatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.onItemTapped,
    this.selectedIndex = 0,
  }) : super(key: key);

  final Function(int index) onItemTapped;
  final int selectedIndex;

  BottomNavigationBarItem getBottomNavigationBarItem(
    AssetGenImage image,
    AssetGenImage selectedImage,
    String title,
  ) {
    return BottomNavigationBarItem(
      icon: image.image(height: 22, width: 22),
      activeIcon: selectedImage.image(height: 22, width: 22),
      label: title,
      tooltip: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: true,
      fixedColor: AppColors.appRed,
      iconSize: 22,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedLabelStyle: TextStyle(
        height: 2,
        fontSize: 12,
        fontFamily: FontFamily.sFCompact,
        fontWeight: FontWeight.w100,
        color: AppColors.appRed,
      ),
      unselectedLabelStyle: TextStyle(
        height: 2,
        fontSize: 12,
        fontFamily: FontFamily.sFCompact,
        fontWeight: FontWeight.w500,
        color: AppColors.appGrey,
      ),
      onTap: (index) {
        onItemTapped(index);
      },
      items: [
        getBottomNavigationBarItem(
          Assets.images.home,
          Assets.images.homeSelected,
          getString(context).homeLabel,
        ),
        getBottomNavigationBarItem(
          Assets.images.profile,
          Assets.images.profileSelected,
          getString(context).profileLabel,
        ),
      ],
    );
  }
}
