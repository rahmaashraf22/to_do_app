import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'app_theme.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}
