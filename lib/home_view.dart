import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), // AppBar
      body: Center(
        child: GetX<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ), // Text
                ElevatedButton(
                  onPressed: () {
                    controller.incrementCounter();
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.decrementCounter();
                  },
                  child: Text('-'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  final HomeController controller = Get.put(HomeController());
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ), // AppBar
    body: Center(
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ), // Text
            ElevatedButton(
              onPressed: () {
                controller.incrementCounter();
              },
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.decrementCounter();
              },
              child: Text('-'),
            ),
          ],
        ),
      ),
    ),
  );
}
