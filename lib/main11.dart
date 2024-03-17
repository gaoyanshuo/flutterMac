import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text('计数器')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$num",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: changeNum,
        child: Text(
          '+',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }

  changeNum() {
    // 执行setState会重新build
    setState(() {
      num++;
    });
    print('changed!');
  }
}
