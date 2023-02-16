import 'package:coding_interview/data/data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<ToDo>> getTodos() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
  if (response.statusCode == 200) {
    Iterable l = json.decode(response.body) as List;
    return l.map((e) => ToDo.fromJson(e as Map<String, dynamic>)).toList();
  } else {
    return List<ToDo>.empty();
  }
}

Future<ToDo> getTodo(int id) async {
  throw UnimplementedError();
}

Future<List<ToDo>> getTodosForUser(User user) async {
  throw UnimplementedError();
}

Future<List<ToDo>> getTodosForUserId(int userid) async {
  final response = await http.get(Uri.parse(
      "https://jsonplaceholder.typicode.com/todos?userid=" +
          userid.toString()));
  if (response.statusCode == 200) {
    Iterable l = json.decode(response.body) as List;
    return l.map((e) => ToDo.fromJson(e as Map<String, dynamic>)).toList();
  } else {
    return List<ToDo>.empty();
  }
}
