import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/AccountTab/AccountTabBody.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/AccountTab/AccountTabHeader.dart';

class AccountTab extends StatelessWidget {
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
              AccountTabHeader(),
              AccountTabBody(),
            ],
          ),
        ),
      ),
    );
  }
}
