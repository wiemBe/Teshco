import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          buildListTile(title: "wiem"),
        ],
      ),
    );
  }
}

Widget buildListTile({
  required String title
}) => ListTile(
  contentPadding: EdgeInsets.symmetric(horizontal:16 ),
  leading: CircleAvatar(
    backgroundColor: Colors.orange,
    /*backgroundImage: buraya imageler gelicek api bagladigimda serverden çekecek,*/
    child: Text(
      title[0].toUpperCase() ,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ),
  ),
  title: Text(title),

);