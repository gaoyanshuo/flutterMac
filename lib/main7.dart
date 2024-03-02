import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('AspectRatio')),
      // body: const MyApp(),
      body: const MyApp1(),
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

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Card(
          elevation: 5,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Teemo',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('高级软件攻城狮'),
              ),
              Divider(),
              ListTile(
                title: Text('Tel: 123456'),
              ),
              ListTile(
                title: Text('Addr: 召唤师峡谷'),
              ),
            ],
          )),
      Card(
        margin: const EdgeInsets.all(10),
        elevation: 20,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                "https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
                fit: BoxFit.contain,
              ),
            ),
            const Divider(),
            // 实现圆形图片 方法1
            const ListTile(
              // leading: ClipOval(
              //   child: Image.network(
              //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXTv3sdLBGNqBTOyEvRf67qGS6_zkenr2HRQ&usqp=CAU",
              //   ),
              // ),

              // 实现圆形图片 方法2
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXTv3sdLBGNqBTOyEvRf67qGS6_zkenr2HRQ&usqp=CAU",
                ),
              ),
              title: Text('Google'),
              subtitle: Text('Hello, Google'),
            ),
          ],
        ),
      ),
    ]);
  }
}
