import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: const MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 垂直列表：ListView中的Container的宽度width自适应, 设置没有效果
    // 垂直列表：ListView中的Container的高度height 自适应, 设置没有效果
    return SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          children: [
            Container(
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            Container(
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
            ),
          ],
        ));
  }
}
