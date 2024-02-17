import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, flutter!'),
        ),
        body: const Column(
          children: [MyApp(), MyButton(), MyText()],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 控制container内， 元素的方位
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        height: 200,
        width: 200,
        transform: Matrix4.translationValues(10, 0, 0),
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

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
      child: const Text(
        'button',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        'I am Text Widget. I am Text Widget.',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis, // ...
        maxLines: 1,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
