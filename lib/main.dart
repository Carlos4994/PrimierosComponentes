import 'package:flutter/material.dart';

import 'package:miscomponentes/src/pages/home_page.dart';

//import 'package:miscomponentes/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        //baner
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
