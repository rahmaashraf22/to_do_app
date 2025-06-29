import 'package:flutter/material.dart';
import 'package:to_do_app/app_theme.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 20 ,vertical: 8),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppTheme.white,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            'Play basket ball',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: AppTheme.primaryBlue),
          ),
          Spacer(),
          InkWell(
            child: Container(padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              ),
              child: Icon(Icons.done, color: AppTheme.white, weight: 22),
            ),
          ),
        ],
      ),
    );
  }
}
