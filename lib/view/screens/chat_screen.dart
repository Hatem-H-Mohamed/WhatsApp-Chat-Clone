import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/app_assets/app_assets.dart';
import 'package:whats_app_clone/core/theme/app_colors.dart';
import 'package:whats_app_clone/view/widgets/chat_block.dart';
import 'package:whats_app_clone/view/widgets/message_input_feild.dart';
import 'package:whats_app_clone/view/widgets/my_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
              image: DecorationImage(
                image: AssetImage(AppAssetsImages.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    ChatBlock(isSender: false, message: "Hello!"),
                    ChatBlock(
                      isSender: true,
                      message:
                          "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                    ),
                    ChatBlock(
                      isSender: false,
                      message: "Hello!",
                      image: Image.asset(AppAssetsImages.sendImg),
                    ),
                  ],
                ),
              ),
              MessageInputFeild(),
            ],
          ),
        ],
      ),
    );
  }
}
