import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: Column(
          children: [
            const Expanded(child: MyGridView()),
            // const Expanded(child: MyGridView2()),
            Expanded(child: MyGridView3())
          ],
        )),
  ));
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // way 1
    // return GridView.count(
    //   crossAxisCount: 3,
    //   children: const [
    //     Icon(Icons.abc_rounded),
    //     Icon(Icons.access_alarm),
    //     Icon(Icons.arrow_upward_outlined),
    //     Icon(Icons.airline_seat_legroom_extra),
    //     Icon(Icons.bookmark_add_sharp),
    //     Icon(Icons.call_received_sharp),
    //   ],
    // );

    // way 2
    return GridView.extent(
      // 可快快速创建横轴子元素为固定长度的GridView
      maxCrossAxisExtent: 90,
      children: const [
        Icon(Icons.abc_rounded),
        Icon(Icons.access_alarm),
        Icon(Icons.arrow_upward_outlined),
        Icon(Icons.airline_seat_legroom_extra),
        Icon(Icons.bookmark_add_sharp),
        Icon(Icons.call_received_sharp),
      ],
    );
  }
}

class MyGridView2 extends StatelessWidget {
  const MyGridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2, // 每行显示几个widget 像GridView.extent的maxCrossAxisExtent
      crossAxisSpacing: 10, // 水平间距
      mainAxisSpacing: 10, // 垂直 间距
      childAspectRatio: 0.7, // 宽高比
      children: [
        Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.pink,
          ),
          child: const Text(
            'Hi there!!',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: const Text('Hi there!!', style: TextStyle(fontSize: 20)),
        )
      ],
    );
  }
}

class MyGridView3 extends StatelessWidget {
  MyGridView3({super.key});

  final List wg = [
    {
      "color": "pink",
      "text": "AAA",
    },
    {
      "color": "blue",
      "text": "BBB",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: wg.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9),
        itemBuilder: _initGridViewData);
  }

  Widget _initGridViewData(context, index) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.bottomCenter, // 垂直居中
      decoration: BoxDecoration(
          color: Colors.amber, border: Border.all(color: Colors.black)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 水平居中
          children: [
            Text(
              wg[index]["text"],
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ]),
    );
  }
}
