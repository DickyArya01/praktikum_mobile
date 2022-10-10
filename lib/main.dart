import 'package:flutter/material.dart';
import 'package:praktikum_mobile/page/dashboard.dart';
import 'package:praktikum_mobile/page/detail.dart';
import 'package:praktikum_mobile/page/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Detail Wisata',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/dashboard':(context) => const DashboardPage(),
          '/detail':(context) => DetailPage()
        },
        home: const Splashscreen());
  }
}
