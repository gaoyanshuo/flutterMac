import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Wrap 搜索页面流布局'),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Text(
          'Hot',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(),
        MyButton(infos: InfoServices.getInitHotWordInfos()),
        const SizedBox(
          height: 30,
        ),
        Text(
          "History",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(),
        const Column(
          children: [
            ListTile(
              title: Text('xBox'),
            ),
            Divider(),
            ListTile(
              title: Text('PS5'),
            )
          ],
        ),
        Container(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.delete_forever),
                label: const Text('delete All History')))
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final List<Widget> infos;
  const MyButton({super.key, required this.infos});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: infos,
    );
  }
}

class InfoServices {
  static List<Widget> getInitHotWordInfos() {
    List<Widget> infos = [
      ElevatedButton(onPressed: () {}, child: const Text('MacBook')),
      ElevatedButton(onPressed: () {}, child: const Text('Ipad')),
      ElevatedButton(onPressed: () {}, child: const Text('PC')),
      ElevatedButton(onPressed: () {}, child: const Text('Razer')),
      ElevatedButton(onPressed: () {}, child: const Text('Ipad')),
      ElevatedButton(onPressed: () {}, child: const Text('Iphone')),
    ];
    return infos;
  }

  static List<Widget> getInitHistoryInfos() {
    List<Widget> infos = [
      ElevatedButton(onPressed: () {}, child: const Text('xBox'))
    ];
    return infos;
  }
}
