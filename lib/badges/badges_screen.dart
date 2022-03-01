import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/badges/badges_view_model.dart';
import 'package:get/get.dart';

class BadgesScreen extends StatefulWidget {
  const BadgesScreen({Key? key}) : super(key: key);

  @override
  State<BadgesScreen> createState() => _BadgesScreenState();
}

class _BadgesScreenState extends State<BadgesScreen> {
  final viewModel = Get.put(BadgesViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badges'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Badge(
                badgeContent: Text(
                  viewModel.snowCount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: const Icon(
                  Icons.ac_unit,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Chip Widget : '),
                Chip(
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.deepPurple,
                  label: Text('BADGE', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Badge Widget : '),
                Badge(
                  toAnimate: false,
                  shape: BadgeShape.square,
                  badgeColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                  badgeContent: const Text(
                    'BADGE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.addSnowCount(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
