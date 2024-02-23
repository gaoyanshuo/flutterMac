import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('页面布局'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Padding组件比较单一，只用于设定间距，占用内存更小
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Hi'),
        ),
        Container(
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center, // 次轴排序方式，无父组件的时候无效
            children: [
              MyIcons(color: Colors.green, icon: Icons.adb_outlined),
              MyIcons(color: Colors.pink, icon: Icons.wine_bar),
            ],
          ),
        )
      ],
    );
  }
}

class MyIcons extends StatelessWidget {
  final Color color;
  final IconData icon;
  const MyIcons({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(color: Colors.yellow[200]),
        child: Icon(
          icon,
          color: color,
          size: 50,
        ));
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Icon(
    //       icon,
    //       color: color,
    //       size: 50,
    //     ),
    //     Icon(
    //       Icons.wine_bar,
    //       color: Colors.purple,
    //       size: 50,
    //     ),
    //     Icon(
    //       Icons.workspaces_rounded,
    //       color: Colors.pink,
    //       size: 50,
    //     ),
    //   ],
    // ));
  }
}
