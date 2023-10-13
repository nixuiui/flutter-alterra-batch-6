import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/const.dart';
import 'package:flutter_alterra_batch_6/controller/data_controller.dart';
import 'package:flutter_alterra_batch_6/widgets/chat_item_widget.dart';
import 'package:get/get.dart';

import '../widgets/menu_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Telegram: ${controller.listChatRoom.length}')),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: Obx(() => ListView.separated(
        itemCount: controller.listChatRoom.length,
        separatorBuilder: (context, index) => const Divider(height: 0), 
        itemBuilder: (context, index) {
          return ChatItemWidget(
            data: controller.listChatRoom[index],
            onAvatarCick: () {
              Get.toNamed(
                AppRouter.profile,
                arguments: {
                  'name': controller.listChatRoom[index].name,
                  "avatar": controller.listChatRoom[index].avatar,
                },
              )?.then((value) {
                if(value == 1) {
                  // do something
                }
              });
            },
          );
        } 
      )),
      drawer: const MenuDrawerWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.counter2.value++;
            },
            backgroundColor: const Color(0xff517da2),
            shape: const CircleBorder(),
            elevation: 0,
            child: Obx(() {
              print('count2 ${controller.counter2.value}');
              return Text(
                '${controller.counter2.value}',
                style: const TextStyle(color: Colors.white),
              );
            }),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              controller.counter1.value = controller.counter1.value+1;
            },
            backgroundColor: const Color(0xff517da2),
            shape: const CircleBorder(),
            elevation: 0,
            child: Obx(() {
              print('count1 ${controller.counter1.value}');
              return Text(
                '${controller.counter1.value}',
                style: const TextStyle(color: Colors.white),
              );
            }),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              controller.listChatRoom.removeAt(0);
            },
            backgroundColor: const Color(0xff517da2),
            shape: const CircleBorder(),
            elevation: 0,
            child: const Icon(Icons.close, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
