import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Wrap 流布局')),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
            // direction: Axis.vertical, // 垂直显示
            direction: Axis.horizontal, // 水平显示
            spacing: 5, // 水平间距
            runSpacing: 5, // 垂直间距
            children: makeBtnList(context)));
  }

  List<Widget> makeBtnList(BuildContext context) {
    List<Widget> buttonList = [];
    const int length = 8;
    for (var i = 0; i < length; i++) {
      buttonList.add(MyButton1(i.toString(), onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Button $i pressed'),
          ),
        );
      }));
    }
    return buttonList.toList();
  }
}

class MyButton1 extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const MyButton1(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
          foregroundColor: MaterialStateProperty.all(Colors.black87)),
      child: Text(text),
    );
  }
}
