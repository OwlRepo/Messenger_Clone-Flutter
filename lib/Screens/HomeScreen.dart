import 'dart:io';

import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/AccountTab/AccountTab.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTab.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/SearchTab/SearchTab.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/StoriesTab/StoriesTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  final List<Widget> tabs = [
    ChatsTab(),
    SearchTab(),
    StoriesTab(),
    AccountTab(),
  ];
  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Are you sure you want to close the app?'),
            actions: [
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () => exit(0),
              ),
            ],
          ),
          barrierDismissible: true,
        );
        return false;
      },
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: tabs,
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.white,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.message_rounded),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.search),
              text: 'Search',
            ),
            Tab(
              icon: Icon(Icons.amp_stories_rounded),
              text: 'Stories',
            ),
            Tab(
              icon: Icon(Icons.account_circle),
              text: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
