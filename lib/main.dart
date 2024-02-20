import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, flutter!!'),
        ),
        body: ListView(
          children: const [
            // MyApp(),
            // MyButton(),
            // MyText(),
            // MyImages(),
            SizedBox(
              // 配置区块的组件
              height: 20,
            ),
            // MyImages(),
            ClipOvalImages(),
            SizedBox(
              height: 20,
            ),
            MyIcon(),
            MyListView()
          ],
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

// 实现一个圆形图片
class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(100)),
        child: Image.network(
          'https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
          scale: 2, // scale: 图片缩小一倍
          fit: BoxFit.contain, // fit属性控制图片的拉伸和挤压 其中cover比较常用
          // repeat: ImageRepeat.repeat, 平铺，背景可能会用到
        ),
      ),
    );
  }
}

// 实现一个圆形图片，使用ClipOval
class ClipOvalImages extends StatelessWidget {
  const ClipOvalImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: ClipOval(
          //     child: Image.network(
          //   'https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
          //   height: 150,
          //   width: 150,
          //   fit: BoxFit.cover,
          // )
          child: Image.asset(
            'images/IMG_1976.JPG',
            fit: BoxFit.cover,
            height: 150,
            width: 150,
            alignment: Alignment.center,
          ),
        ));
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.home,
          size: 40,
          color: Colors.black,
        ),
        Icon(
          Icons.settings,
          size: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Hi'),
        ),
        const Divider(), // line
        const ListTile(
          leading: Icon(Icons.search),
          title: Text('Hi'),
        ),
        const Divider(),
        ListTile(
          trailing: Image.network(
              'https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png'),
          title: const Text("Google"),
          subtitle: const Text("Google !!!"),
        ),
        Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOSeOWsB0bfqvjWXBMQR2T5xxD7oPYWaEEIQ&usqp=CAU'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
