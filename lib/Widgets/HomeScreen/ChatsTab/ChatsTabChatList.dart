import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/DummyData.dart';
import 'package:messenger_clone_modified/Widgets/HomeScreen/ChatsTab/ChatsTabFavouritesItems.dart';

class ChatsTabChatList extends StatefulWidget {
  @override
  _ChatsTabChatListState createState() => _ChatsTabChatListState();
}

class _ChatsTabChatListState extends State<ChatsTabChatList> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              margin: EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
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
                  ChatsTabFavouritesItems(),
                ],
              ),
            ),
            Expanded(
              flex: 1,
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
