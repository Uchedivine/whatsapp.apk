import 'package:flutter/material.dart';
import 'package:whatsapp_apk/colors.dart';
import 'package:whatsapp_apk/widgets/chat_list.dart';
import 'package:whatsapp_apk/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: chatList(),
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                        Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                        Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: ''
                ),
          )
        ],
      ),
    );
  }
}
