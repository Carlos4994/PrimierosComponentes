import 'package:flutter/material.dart';

import 'package:miscomponentes/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
//baner
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const HomePageTemp()),
    );
  }
}
