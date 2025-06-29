import 'package:flutter/material.dart';
import 'package:to_do_app/app_theme.dart';

class DefaultElevatedButton extends StatelessWidget {
  String label;
  VoidCallback onPressed;

  DefaultElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: AppTheme.white,
            backgroundColor: AppTheme.primaryBlue,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryBlue,
        ),
      ),
    );
  }
}
