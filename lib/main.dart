import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, flutter!'),
        ),
        body: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 控制container内， 元素的方位
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.green, width: 10),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: const Text(
          'HAHA',
          style: TextStyle(color: Colors.pink, fontSize: 20),
        ),
      ),
    );
  }
}
