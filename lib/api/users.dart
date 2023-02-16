import 'package:coding_interview/data/data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> getUsers() async {
  throw UnimplementedError();
}

Future<User?> getUser(int id) async {
  final response = await http.get(Uri.parse(
      "https://jsonplaceholder.typicode.com/users?id=" + id.toString()));
  if (response.statusCode == 200) {
    Iterable l = json.decode(response.body) as List;
    return User.fromJson(l.first as Map<String, dynamic>);
  } else {
    return null;
  }
}
