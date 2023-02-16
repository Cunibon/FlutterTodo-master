import 'package:coding_interview/pages/posts_page.dart';
import 'package:coding_interview/pages/todos_page.dart';
import 'package:coding_interview/pages/user_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: const MainPage(title: 'Amazing Todo App'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final pages = const [TodoContent(), PostsContent(), UserContent()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Users',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
