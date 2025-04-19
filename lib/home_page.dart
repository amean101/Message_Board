import 'package:flutter/material.dart';
import 'chat_room_page.dart';

typedef Room = Map<String, dynamic>;

class HomePage extends StatelessWidget {
  final List<Room> rooms = [
    {'name': 'Games', 'icon': Icons.videogame_asset},
    {'name': 'Business', 'icon': Icons.business_center},
    {'name': 'Public Health', 'icon': Icons.health_and_safety},
    {'name': 'Study', 'icon': Icons.school},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message Boards')),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];
          return ListTile(
            leading: Icon(room['icon']),
            title: Text(room['name']),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatRoomPage(roomName: room['name']),
              ),
            ),
          );
        },
      ),
    );
  }
}