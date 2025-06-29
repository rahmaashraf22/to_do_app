import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/tasks/task_item.dart';

class TasksTab extends StatefulWidget {
  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  List<Widget> listTabs = [Text('Tasks'), Text('Settings')];
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          EasyDateTimeLinePicker(
            firstDate: selectedDate.subtract(Duration(days: 365)),
            lastDate: selectedDate.add(Duration(days: 365)),
            focusedDate: selectedDate,
            onDateChange: (date) {
            setState(() {
                 selectedDate = date;
            });
            },
            physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: listTabs.length,

              itemBuilder: (BuildContext context, int index) {
                return TaskItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
