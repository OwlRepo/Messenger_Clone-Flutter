import 'package:flutter/material.dart';

import '../../../DummyData.dart';

class ChatsTabFavouritesItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: MESSAGES_DUMMY_DATA.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: ClipOval(
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        MESSAGES_DUMMY_DATA[index].picture,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Text(
                  MESSAGES_DUMMY_DATA[index].name,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
