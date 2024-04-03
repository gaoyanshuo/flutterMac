import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false, // 去掉debug图标
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

// 生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    // tab个数
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar tabBarView'),
        leading: IconButton(
          //左侧图标
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: Colors.pink[300], // appBar背景色
        actions: [
          //右侧按钮图标
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
        bottom: TabBar(
            // isScrollable: true, // tab滑动，常用于多个tab不能在一个页面上显示的时候
            indicatorColor: Colors.white, // 控制当前选中的tab的指示器的颜色
            indicatorWeight: 2, // 指示器高度
            indicatorPadding: const EdgeInsets.all(2), // 指示器内边距
            indicatorSize: TabBarIndicatorSize.label, //label：指示器长度和文字等长
            // indicator: BoxDecoration(color: Colors.grey), // 选中的背景色
            // labelColor: Colors.grey, //选中颜色
            // unselectedLabelColor: Colors.grey, // 未选中颜色

            // 通过TabBar和TabBarView的controller来切换页面。
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('关注'),
              ),
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('视频'),
              )
            ]),
      ),
      body: TabBarView(
          // 通过TabBar和TabBarView的controller来切换页面。
          controller: _tabController,
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text('关注列表'),
                ),
                ListTile(
                  title: Text('关注列表'),
                ),
                ListTile(
                  title: Text('关注列表'),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text('热门列表'),
                ),
                ListTile(
                  title: Text('热门列表'),
                ),
                ListTile(
                  title: Text('热门列表'),
                ),
                ListTile(
                  title: Text('热门列表'),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text('视频列表'),
                ),
              ],
            ),
          ]),
    );
  }
}
