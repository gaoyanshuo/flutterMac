import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('按钮组件')),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('点我！～')), // 普通按钮
            TextButton(onPressed: () {}, child: const Text('点点我')), // 文字按钮
            OutlinedButton(onPressed: () {}, child: const Text('别点我')), // 边框按钮
            IconButton(onPressed: () {}, icon: const Icon(Icons.adb)) // 图标按钮
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // 附带图标写法 ⬇️
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('Send')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('Info')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add'))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // 图标，背景，文字的颜色修改 ↓
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                style: ButtonStyle(
                    // 背景颜色
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    // 文字图标颜色
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('Send')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('Info')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add'))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // 调整按钮的尺寸方法 ↓
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  label: const Text('Send')),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(5),
              height: 60,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      // 控制按钮弧度
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1))),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.pink)),
                  onPressed: () {},
                  icon: const Icon(Icons.sentiment_satisfied_alt),
                  label: const Text('Laugh')),
            ))
          ],
        )
      ],
    );
  }
}
