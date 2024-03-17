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
  final List<Widget> _myList = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text('动态添加List')),
      body: Center(
        child: ListView(
          children: _myList
              .map((e) => ListTile(
                    title: e,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewList,
        child: Text(
          '+',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }

  addNewList() {
    setState(() {
      _myList.add(const Text('List'));
    });
  }
}
