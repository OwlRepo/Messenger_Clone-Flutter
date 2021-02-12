import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
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
