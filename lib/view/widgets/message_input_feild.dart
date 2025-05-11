import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whats_app_clone/core/app_assets/app_assets.dart';
import 'package:whats_app_clone/core/theme/app_colors.dart';

class MessageInputFeild extends StatelessWidget {
  const MessageInputFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 21),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                fillColor: Colors.transparent,
                hintText: 'Type a message ...',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 2,
                  ),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppAssetsIcons.camera, width: 24),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppAssetsIcons.send, width: 24),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssetsIcons.mic, width: 24),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: CircleBorder(),
              padding: const EdgeInsets.all(13),
            ),
          ),
        ],
      ),
    );
  }
}
