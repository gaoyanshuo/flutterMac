import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('AspectRatio')),
      body: const MyApp(),
    )),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 可以控制子元素的宽高比.宽度为屏幕的宽度，高度为容器的一半。
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
