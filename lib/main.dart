import 'package:flutter/material.dart';
import 'package:teshco/home_page.dart';

import 'drawer_class.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teshco',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(centerTitle: true,backgroundColor: Colors.transparent,elevation: 0)
      ),
      home:  TwoDrawers()
    );
  }
}
