import 'package:flutter/material.dart';

class BaseLineScreen extends StatefulWidget {
  const BaseLineScreen({Key? key}) : super(key: key);

  @override
  State<BaseLineScreen> createState() => _BaseLineScreenState();
}

class _BaseLineScreenState extends State<BaseLineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BaseLine Test')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Baseline(
              baseline: 50,
              baselineType: TextBaseline.ideographic,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const Text('<적용 전>'),
          Row(
            children: const [
              Text(
                '짧쌞타!',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'yYqcnd',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '12094',
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text('<적용 후>'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: const [
              Text(
                '짧쌞타!',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'yYqcnd',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '12094',
                style: TextStyle(fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}
