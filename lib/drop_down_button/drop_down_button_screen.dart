import 'package:flutter/material.dart';

class DropDownButtonScreen extends StatefulWidget {
  const DropDownButtonScreen({Key? key}) : super(key: key);

  @override
  State<DropDownButtonScreen> createState() => _DropDownButtonScreenState();
}

class _DropDownButtonScreenState extends State<DropDownButtonScreen> {
  List<String> sprintMembers = ['Eddie', 'Jacob', 'Sean', 'Jay', 'Koo'];
  String defaultValue = 'Jacob';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDownButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButton(
                value: defaultValue,
                items: sprintMembers
                    .map(
                      (member) => DropdownMenuItem(
                        child: Text(member),
                        value: member,
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    defaultValue = value.toString();
                  });
                },
                icon: const Icon(Icons.person),
                iconSize: 30,
                iconEnabledColor: Colors.redAccent,
                // isExpanded: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
