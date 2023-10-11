import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/pages/new_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPage()));
              }, 
              child: const Text('New Page')
            ),
          );
        }
      ),
    );
  }
}