import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/models/chat_room_model.dart';
import 'package:flutter_alterra_batch_6/widgets/chat_item_widget.dart';

import '../widgets/menu_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final listChatRoom = [
    ChatRoomModel(
      name: 'Press Room', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "5:54 PM",
      lastMessage: "Selamat Malam", 
    ),
    ChatRoomModel(
      name: 'Andi', 
      lastMessageTime: "7:00 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Aan', 
      lastMessageTime: "3:30 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Budi', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "3:07 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Andre', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "5:00 PM",
    ),
    ChatRoomModel(
      name: 'Gunawan', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "2:00 PM",
    ),
    ChatRoomModel(
      name: 'Press Room', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "5:54 PM",
      lastMessage: "Selamat Malam", 
    ),
    ChatRoomModel(
      name: 'Andi', 
      lastMessageTime: "7:00 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Aan', 
      lastMessageTime: "3:30 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Budi', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "3:07 PM",
      lastMessage: "Main bola yuk", 
    ),
    ChatRoomModel(
      name: 'Andre', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "5:00 PM",
    ),
    ChatRoomModel(
      name: 'Gunawan', 
      avatar: "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90", 
      lastMessageTime: "2:00 PM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: listChatRoom.length,
        separatorBuilder: (context, index) => const Divider(height: 0), 
        itemBuilder: (context, index) => ChatItemWidget(
          data: listChatRoom[index]
        ), 
      ),
      drawer: const MenuDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff517da2),
        shape: const CircleBorder(),
        elevation: 0,
        child: const Icon(Icons.edit, color: Colors.white,),
      ),
    );
  }
}
