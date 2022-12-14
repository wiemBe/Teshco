import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_test.dart';


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
      home:  HomePage()
    );
  }
}
