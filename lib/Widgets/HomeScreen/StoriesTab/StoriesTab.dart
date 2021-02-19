import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/StoriesTab/StoriesTabHeader.dart';

class StoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StoriesTabHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
