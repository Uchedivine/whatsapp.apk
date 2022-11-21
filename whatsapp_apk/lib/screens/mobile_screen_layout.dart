import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp_apk/colors.dart';
import 'package:whatsapp_apk/widgets/contact_list.dart';

class mobileLayout extends StatelessWidget {
  const mobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  )
                ]),
          ),
          body: contact_list(),
          floatingActionButton:FloatingActionButton(
            onPressed: () {
              
            },
            backgroundColor: tabColor,
            child: const Icon(Icons.comment, color: Colors.white,),
          ) ,
          ),
    );
  }
}
