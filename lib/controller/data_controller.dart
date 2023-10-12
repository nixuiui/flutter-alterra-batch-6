import 'package:get/state_manager.dart';

import '../models/chat_room_model.dart';

class DataController {

  final counter1 = Rx<int>(0);
  final counter2 = 0.obs;
  final listChatRoom = RxList<ChatRoomModel>([
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
  ]);
  
}