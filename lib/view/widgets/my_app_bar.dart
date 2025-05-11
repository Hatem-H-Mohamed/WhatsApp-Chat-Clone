import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/core/app_assets/app_assets.dart';
import 'package:whats_app_clone/core/theme/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppAssetsIcons.backArrow),
      ),
      leadingWidth: 25,
      title: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppAssetsImages.profileImg),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.only(right: 10),
          ),
          Text("John Safwat"),
        ],
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssetsIcons.call, width: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssetsIcons.video, width: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssetsIcons.more, width: 24),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
