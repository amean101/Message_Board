import 'package:flutter/material.dart';

class ChatRoomPage extends StatelessWidget {
  final String roomName;

  ChatRoomPage({required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(roomName)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Messages list here with StreamBuilder
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: 'Enter message'))),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Send message logic
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
