import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/DummyData.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabFavourites.dart';

class ChatsTabCategoryItemList extends StatefulWidget {
  @override
  _ChatsTabCategoryItemListState createState() =>
      _ChatsTabCategoryItemListState();
}

class _ChatsTabCategoryItemListState extends State<ChatsTabCategoryItemList> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        'Favourites',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ChatsTabFavourites(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: ListView.builder(
                  itemCount: MESSAGES_DUMMY_DATA.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        MESSAGES_DUMMY_DATA[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        MESSAGES_DUMMY_DATA[index].lastChat,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                      trailing: Text(
                        MESSAGES_DUMMY_DATA[index].latest_timestamp,
                      ),
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.network(
                            MESSAGES_DUMMY_DATA[index].picture,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
