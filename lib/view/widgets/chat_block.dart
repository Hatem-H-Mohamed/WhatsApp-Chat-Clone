import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/theme/app_colors.dart';

class ChatBlock extends StatelessWidget {
  final bool isSender;
  final String? message;
  final Image? image;
  const ChatBlock({
    super.key,
    required this.isSender,
    this.message,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: isSender ? AppColors.sendColor : AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(20),
                  bottomRight: const Radius.circular(20),
                  topLeft: Radius.circular(isSender ? 20 : 0),
                  topRight: Radius.circular(isSender ? 0 : 20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (message != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        message!,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  if (image != null)
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: image,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
