import 'package:flutter/material.dart';
import '../api/todos.dart';
import '../api/users.dart';
import '../data/data.dart';

class TodoContent extends StatelessWidget {
  const TodoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getTodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final toDos = snapshot.data as List<ToDo>;
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyWidget(userId: toDos[index].userId))),
                    title: Text(toDos[index].title),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemCount: toDos.length);
          } else if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return const Align(
                alignment: Alignment.center, child: Text("Could read data"));
          }
        },
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final int userId;
  const MyWidget({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("For User " + userId.toString())),
      body: FutureBuilder(
        future: getUser(userId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data as User;
            return Center(
              child: Column(
                children: [
                  Text("id: " + user.id.toString()),
                  Text("name: " + user.name),
                  Text("usuername: " + user.username),
                  Text("email: " + user.email)
                ],
              ),
            );
          } else if (!snapshot.hasData) {
            print("Hello");
            return const CircularProgressIndicator();
          } else {
            return const Align(
                alignment: Alignment.center, child: Text("Could read data"));
          }
        },
      ),
    );
  }
}
