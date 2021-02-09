import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabCategories.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabCategoryItemList.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabHeader.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                child: ChatsTabCategoryItemList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
