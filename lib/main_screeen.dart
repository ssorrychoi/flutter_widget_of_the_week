import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/badges/badges_screen.dart';
import 'package:flutter_widget_of_the_week/home/my_home_page.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jacob's Flutter Learning"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Get.to(const MyHomePage(title: 'My Home Page')),
                child: const Text('MyPage'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(const BadgesScreen()),
                child: const Text('Badges'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
