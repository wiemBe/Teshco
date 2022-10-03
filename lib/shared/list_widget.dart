import 'package:flutter/material.dart';
import 'package:teshco/shared/listitem.dart';

Widget listWidget(ListItem item) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(

              /*decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imgUrl),fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0)
            )*/
              ),
          SizedBox( // avatar icin bosluk
            width: 0.0,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(Icons.person),
                  Text(
                    item.author,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.arrow_upward_outlined),
                  Text("4"),
                  Icon(Icons.arrow_downward_outlined),
                  Text("5"),
                  
                  
                ],
              )
            ],
          ))
        ],
      ),
    ),
  );
}


