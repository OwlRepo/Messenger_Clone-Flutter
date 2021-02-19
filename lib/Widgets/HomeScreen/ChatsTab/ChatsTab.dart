import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabCategories.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabChatList.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabHeader.dart';

class ChatsTab extends StatefulWidget {
  @override
  _ChatsTabState createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab>
// with AutomaticKeepAliveClientMixin<ChatsTab>
{
  @override
  // bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    // super.build(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ChatsTabHeader(),
              ChatsTabCategories(),
              Expanded(
                child: ChatsTabChatList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
