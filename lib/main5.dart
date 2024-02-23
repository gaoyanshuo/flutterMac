import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flex 弹性布局'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flex(
        direction: Axis.horizontal,
        // direction: Axis.vertical,
        children: [
          // 尺寸自适应
          // Expanded(
          //   flex: 1,
          //   child: MyIconsContainer(
          //       icon: Icons.ac_unit_outlined, color: Colors.pink),
          // ),
          // // Expanded(
          // //   flex: 2,
          // MyIconsContainer(
          //     icon: Icons.access_alarm_sharp, color: Colors.green), // 固定尺寸
          Expanded(child: MyImgContainer())
          // )
        ]);
  }
}

class MyIconsContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  const MyIconsContainer({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black), color: Colors.amber),
      child: Icon(
        icon,
        size: 50,
        color: color,
      ),
    );
  }
}

class MyImgContainer extends StatelessWidget {
  const MyImgContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // 水平布局（如Row）：通常需要限定子widget的高度，因为在水平布局中，Row会尽可能占满垂直空间，而宽度则由子widget的宽度和Row的内部逻辑决定。
    // 垂直布局（如Column）：通常需要限定子widget的宽度，因为在垂直布局中，Column会尽可能占满水平空间，而高度则由子widget的高度和Column的内部逻辑决定。
    return ListView(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: myImg(
                  "https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                  height: 180, // 垂直方向控制好宽度
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: myImg(
                              "https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png")),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                          flex: 1,
                          child: myImg(
                              "https://www.google.co.jp/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"))
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }

  Widget myImg(src) {
    return Container(
        // padding: const EdgeInsets.all(10),
        height: 180, //水平方向控制高度
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        width: double.infinity,
        child: Image.network(
          src,
          fit: BoxFit.contain,
        ));
  }
}
