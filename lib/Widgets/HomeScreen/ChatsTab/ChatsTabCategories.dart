import 'package:flutter/material.dart';

class ChatsTabCategories extends StatefulWidget {
  @override
  _ChatsTabCategoriesState createState() => _ChatsTabCategoriesState();
}

class _ChatsTabCategoriesState extends State<ChatsTabCategories> {
  final List<String> categories = [
    'Messages',
    'Online',
    'Groups',
    'Request',
  ];

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.10,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedIndex == index
                      ? Theme.of(context).primaryColorDark
                      : Colors.white,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: selectedIndex == index
                  ? Theme.of(context).primaryColorDark
                  : null,
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
