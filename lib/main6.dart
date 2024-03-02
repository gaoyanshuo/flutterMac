import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Stack层叠组件'),
      ),
      // body: MyApp(),
      // body: MyApp1(),
      // body: MyApp2(),
      // body: MyApp3(),
      body: MyApp4(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.red,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
        ),
        const Text("HAHA")
      ],
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(children: [
        //相对于外部容器进行定位的，如果没有外部容器，就相当于整个屏幕进行定位
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ),
        const Positioned(right: 0, bottom: 190, child: Text('Hi~'))
      ]),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取设备的宽度和高度
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 35),
          children: const [
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
            ListTile(
              title: Text('i am listTile'),
            ),
          ],
        ),
        Positioned(
            top: 0,
            // left: 0,
            height: 44,
            width: size.width, // 配置子元素的宽度和高度
            child: Container(
              alignment: Alignment.center,
              height: 44,
              color: Colors.black,
              child: const Text(
                'second title',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: const Align(
        alignment: Alignment.center,
        child: Text('Hi, flutter!'),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    // 一行中两个元素，一个居左，一个居右
    return const Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text('AAA'),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text('BBB'),
        ),
      ],
    );
  }
}
