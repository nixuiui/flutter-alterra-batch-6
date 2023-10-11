import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var name = "Niki";

  var index = 0;
  final listName = [
    "Andi",
    "Budi",
    "Citra",
    "Deni",
    "Edi",
    "Fendy",
    "Gagah"
  ];

  @override
  void initState() {
    name = "Radit";
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello, $name'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          name = listName[index];
          index++;
          if(index == 7) index = 0;
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}