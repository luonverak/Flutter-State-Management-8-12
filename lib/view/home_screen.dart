import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/counter_controller.dart';
import 'package:state_management/view/second_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trArgs()),
        actions: [
          IconButton(
            onPressed: () async => controller.changeLanguage(),
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () async => controller.notification(),
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () async => controller.screenMode(),
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () async => Get.to(SecondScreen()),
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.counter.value}',
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.increase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
