import 'package:flutter/material.dart';
import 'package:teshco/person1_page.dart';
import 'package:teshco/person2_page.dart';
import 'package:teshco/person3_page.dart';
import 'package:teshco/person4_page.dart';
import 'package:teshco/settings_page.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);
  final _title = "Serverden gelen baslik";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.mail))],
      ),
      drawer: Drawer(
        
        child: Material(
          color: Color.fromARGB(255, 69, 69, 38),
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text("EN FAZLA FIKIR BELIRTENLER")),
              const SizedBox(
                height: 48,
              ),
              buidMenuItem(
                text: "Person1",
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 24),
              buidMenuItem(
                text: "Person2",
                icon: Icons.people,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 24),
              buidMenuItem(
                text: "Person3",
                icon: Icons.people,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 24),
              buidMenuItem(
                text: "Person4",
                icon: Icons.people,
                onClicked: () => selectedItem(context, 3),
              ),
              Divider(
                height: 40,
                color: Colors.white,
              ),
              buidMenuItem(
                  text: "Settings",
                  icon: Icons.settings,
                  onClicked: () => selectedItem(context, 4))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "old topics"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "profile")
        ],
      ),
    );
  }

  Widget myDrawerItem(IconData icon, String name) => ListTile(
        leading: Icon(icon),
        title: Text(name),
      );
}

Widget buidMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PersonPage1(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PersonPage2(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PersonPage3(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PersonPage4(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SettingsPage(),
      ));
      break;
  }
}
