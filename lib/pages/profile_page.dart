import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_6/controller/data_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final controller = DataController();
  final controller2 = Get.find<DataController>();
  final controller3 = Get.find<DataController>();

  String name = '';
  String? avatar;
  
  Future<String> sayHello() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Hello, $name';
  }

  @override
  void initState() {
    final arguments = Get.arguments as Map<String, dynamic>;
    name = arguments["name"];
    avatar = arguments["avatar"];
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(avatar != null) ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                avatar ?? 'AA',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text('Hello, $name'),
            const SizedBox(height: 16),
            Text('Counter 1: ${controller.counter1.value}'),
            Text('Counter 2: ${controller.counter2.value}'),
            FutureBuilder<String>(
              future: Future<String>.delayed(
                const Duration(seconds: 2),
                () => 'Data Loaded',
              ),
              builder: (context, value) {
                if(value.data != null) {
                  return Text('${value.data}');
                }
                return const Text('Loading..');
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Get.back(result: 1);
          }, 
          child: const Text('Save')
        ),
      ),
    );
  }
}