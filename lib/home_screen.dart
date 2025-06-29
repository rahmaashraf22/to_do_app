import 'package:flutter/material.dart';
import 'package:to_do_app/app_theme.dart';
import 'package:to_do_app/tasks/tasks_tab.dart';
import 'package:to_do_app/tasks/add_task_bottom_sheet.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('To Do List', style: theme.textTheme.titleLarge,)),

      body:  
      TasksTab(),

      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(context: context, builder: (_)=> AddTaskBottomSheet(),),
        child: Icon(Icons.add, color: AppTheme.white),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (selectedIndex) => onItemTapped(selectedIndex),

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
