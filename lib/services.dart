import 'package:http/http.dart' as http;

import 'Users.dart';

class Service {
  static const String url = "https://jsonplaceholder.typicode.com/comments";
  static Future<List<Users>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<Users> users = usersFromJson(response.body);
        return users;
      } else {
        return <Users>[];
      }
    } catch (e) {
      return <Users>[];
    }
  }
}
