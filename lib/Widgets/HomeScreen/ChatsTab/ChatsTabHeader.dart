import 'package:flutter/material.dart';

class ChatsTabHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: ClipOval(
              child: Image.network(
                'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png',
                height: 50.0,
                width: 50.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          RaisedButton(
            color: Theme.of(context).primaryColorDark,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.create,
                color: Colors.white,
              ),
            ),
            shape: CircleBorder(),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
