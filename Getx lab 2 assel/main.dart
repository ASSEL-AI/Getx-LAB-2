import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'Flutter Demo', home: const HomeView());
  }
}
