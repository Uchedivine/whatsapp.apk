import 'package:flutter/material.dart';
import 'package:whatsapp_apk/colors.dart';
import 'package:whatsapp_apk/widgets/chat_list.dart';
import 'package:whatsapp_apk/widgets/contact_list.dart';
import 'package:whatsapp_apk/widgets/webChat_appBar.dart';
import 'package:whatsapp_apk/widgets/web_profile_bar.dart';
import 'package:whatsapp_apk/widgets/web_search_bar.dart';

class webLayout extends StatelessWidget {
  const webLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                webProfileBar(),
                webSearchBar(),
                contact_list(),
              ],
            ),
          ),
        ),
        //WebScreen
        Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/backgroundimage.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                webChatAppBar(),
                Expanded(child: chatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: searchBarColor,
                                filled: true,
                                hintText: 'Type a message',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    )),
                                contentPadding:
                                    const EdgeInsets.only(left: 20)),
                          ),
                        ),
                      ),
                        IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
