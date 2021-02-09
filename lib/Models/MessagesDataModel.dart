import 'package:flutter/material.dart';

class MessagesDataModel {
  final int id;
  final String name, picture, latest_timestamp, lastChat;

  const MessagesDataModel({
    @required this.id,
    @required this.name,
    @required this.picture,
    @required this.latest_timestamp,
    @required this.lastChat,
  });
}
