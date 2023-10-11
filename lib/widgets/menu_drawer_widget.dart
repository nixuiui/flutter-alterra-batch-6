import 'package:flutter/material.dart';

class MenuDrawerWidget extends StatelessWidget {
  const MenuDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1618588507085-c79565432917?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHww&w=1000&q=80"))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    "https://akcdn.detik.net.id/community/media/visual/2023/09/08/lionel-messi-1_169.jpeg?w=600&q=90",
                    width: 54,
                    height: 54,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8,),
                const Text(
                  'Lionel Messi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '021331312',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ),
          const ListTile(
            leading: Icon(Icons.group, color: Colors.black54),
            title: Text('New Group'),
          ),
          const ListTile(
            leading: Icon(Icons.lock, color: Colors.black54),
            title: Text('New Secret Channel'),
          ),
          const ListTile(
            leading: Icon(Icons.campaign, color: Colors.black54),
            title: Text('New Channel'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.contacts, color: Colors.black54),
            title: Text('Contacts'),
          ),
          const ListTile(
            leading: Icon(Icons.person_add, color: Colors.black54),
            title: Text('Invite Friends'),
          ),
          const ListTile(
            leading: Icon(Icons.settings, color: Colors.black54),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.help, color: Colors.black54),
            title: Text('Telegram FAQ'),
          ),
        ],
      ),
    );
  }
}