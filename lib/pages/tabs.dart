import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/setting.dart';
import './tabs/search.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SettingPage(),
    const SearchPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNav'),
      ),
      drawer: const Drawer(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                // 自定义
                child: DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i0.hdslb.com/bfs/archive/c8fd97a40bf79f03e7b76cbc87236f612caef7b2.png'),
                            fit: BoxFit.contain)),
                    child: Text('')),
              )
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text('Peoples'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('Setting'),
          )
        ],
      )),
      endDrawer: const Drawer(
          child: Column(
        children: [
          // 自带样式
          UserAccountsDrawerHeader(
              accountName: Text('bilibili'),
              accountEmail: Text('blibli.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i0.hdslb.com/bfs/archive/c8fd97a40bf79f03e7b76cbc87236f612caef7b2.png'),
              )),
        ],
      )),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex, // 第几个menu被选中
        iconSize: 25,
        fixedColor: Colors.red, // Color
        type: BottomNavigationBarType.fixed, // menu 4个以上需要配置
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        ],
      ),
      // 浮动按钮
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(top: 4), // 调整floatingActionButton的位置
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Colors.orange : Colors.purple,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
