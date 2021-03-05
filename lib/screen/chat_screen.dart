import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  final List<Widget> listItems = [
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.person),
      ),
      title: Text("User"),
      subtitle: Text("Recieved/Sent Latest Message"),
      trailing: Text(DateFormat.jm().format(DateTime.now())),
    ),
    Divider(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            key: PageStorageKey<String>("/chat"),
            slivers: [
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverFixedExtentList(
                    itemExtent: 48,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        print(listItems.length);
                        return listItems[index];
                      },
                      childCount: listItems.length,
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
