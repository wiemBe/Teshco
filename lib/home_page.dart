import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);
  final _title = "Serverden gelen baslik";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions:  [
          IconButton(onPressed: (() => {}), icon: Icon(Icons.mail))
          ],
      ),
      body: Column(
        children:  [
          Text("burasi feedir")]),
      drawer: Drawer(width:100.0,),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "old topics"),
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "profile"),
       
      ],),
    );
  }

  
}
