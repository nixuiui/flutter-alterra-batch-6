class ChatRoomModel {

  final String name;
  final String? avatar;
  final String? lastMessage;
  final String lastMessageTime;

  ChatRoomModel({
    required this.name,
    this.avatar,
    this.lastMessage,
    required this.lastMessageTime,
  });

}