import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tabs();
  }
}
