import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/controller/data_controller.dart';
import 'package:get/instance_manager.dart';

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

  final controller = DataController();
  final controller2 = Get.find<DataController>();
  final controller3 = Get.find<DataController>();

  @override
  void initState() {
    print('instance: ${controller.hashCode}');
    print('controller2: ${controller2.hashCode}');
    print('controller3: ${controller3.hashCode}');
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
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Counter 1: ${controller.counter1.value}'),
            Text('Counter 2: ${controller.counter2.value}'),
          ],
        ),
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