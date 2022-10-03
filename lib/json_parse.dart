import 'package:flutter/material.dart';
import 'Users.dart';
import 'services.dart';

class JsonParse extends StatefulWidget {
  const JsonParse({Key? key}) : super(key: key);

  @override
  State<JsonParse> createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  List<Users> _users;
  bool _loading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Service.getUsers().then((users) {
      _users = users;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
