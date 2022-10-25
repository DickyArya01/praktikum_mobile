import 'package:flutter/material.dart';
import 'package:praktikum_mobile/data/detailargs.dart';
import 'package:praktikum_mobile/page/detail.dart';
import 'package:praktikum_mobile/tabsbody/home.dart';

import '../main.dart';

import 'package:praktikum_mobile/data/data.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Home')),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.map),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          const HomePage(),
          const Center(
            child: const Text('anjay 1'),
          ),
          const Center(
            child: Text('anjay 2'),
          ),
        ]),
      ),
    );
  }

  Stack gridElement(String namaWisata, Color color) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          color: color,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Text(
            namaWisata,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}
