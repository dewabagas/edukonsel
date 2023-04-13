import 'package:flutter/material.dart';

class TabActive extends StatefulWidget {
  const TabActive({super.key});

  @override
  State<TabActive> createState() => _TabActiveState();
}

class _TabActiveState extends State<TabActive> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Complete'));
  }
}
