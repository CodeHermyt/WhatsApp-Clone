import 'package:flutter/material.dart';
import 'package:whatsappclone/screen/chat_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      Icon(Icons.camera_alt_rounded),
      Text(
        "CHATS",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "STATUS",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "CALLS",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ];

    final List<Widget> _corrospondingWidgets = [
      Icon(Icons.camera_alt_rounded),
      ChatScreen(),
      Text(
        "STATUS",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "CALLS",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ];
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              // List of widgets
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const Text("WhatsApp"),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        print("Search button is pressed!");
                      },
                    ),
                    PopupMenuButton(itemBuilder: (_) {
                      print("Popup menu pressed");
                      return [];
                    }),
                  ],
                  floating: true,
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  elevation: 6,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: _tabs
                        .map((Widget name) => Tab(
                              child: name,
                            ))
                        .toList(),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(children: _corrospondingWidgets),
        ),
      ),
    );
  }
}
