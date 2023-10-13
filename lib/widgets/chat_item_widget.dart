import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/models/chat_room_model.dart';

class ChatItemWidget extends StatelessWidget {
  
  final ChatRoomModel data;
  final Function()? onAvatarCick;
  
  const ChatItemWidget({
    super.key,
    required this.data,
    this.onAvatarCick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(data.avatar != null) GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onAvatarCick?.call,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                data.avatar ?? 'AA',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
              ),
            ),
          ) else ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: onAvatarCick?.call,
              child: Container(
                width: 54,
                height: 54,
                color: Colors.yellow,
                child: const Center(child: Text(
                  'AA',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                )),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                if(data.lastMessage != null) Text(
                  data.lastMessage!,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ) else const Text(
                  'Belum ada pesan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            data.lastMessageTime,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}