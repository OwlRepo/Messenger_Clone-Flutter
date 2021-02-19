import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Tap here to search...',
                    ),
                    controller: searchController,
                    onChanged: (value) {
                      print('Searching for $value');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
