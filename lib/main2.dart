import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  final List list = [];
  MyHomePage({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add("我是一个列表--$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${list[index]}"),
          );
        });
  }
}
