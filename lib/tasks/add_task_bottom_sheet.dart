import 'package:flutter/material.dart';
import 'package:to_do_app/tasks/default_text_form_field.dart';
import 'package:to_do_app/tasks/default_elevated_button.dart';
import 'package:intl/intl.dart';

class AddTaskBottomSheet extends StatefulWidget {
  AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            
            children: [
              Text('Add new Task', style: textTheme.titleMedium,),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: AppTheme.primaryBlue,
              //   ),
              //   onPressed: () {},
              //   child: Icon(Icons.add, color: AppTheme.white),
              // ),
              DefaultTextFormField(
                controller: titleController,
                hintText: 'Enter your Task',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Title can not be empty.';
                  }
                    return null;
                  
                },
              ),
              SizedBox(height: 10),
              DefaultTextFormField(
                controller: descriptionController,
                hintText: 'Enter Task Description',
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Description can not be empty.';
                  } 
                    return null;
                  
                },
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Select Date', style: textTheme.titleMedium),
                ),
                onTap: () async {
                  await _pickDate();
                },
              ),
              Text(
                dateFormat.format(selectedDate),
                style: textTheme.titleMedium,
              ),
              Spacer(),
              DefaultElevatedButton(
                label: 'Submit',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    addTask();
                  }
                },
              
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (dateTime != null && dateTime != selectedDate) {
      setState(() {
        selectedDate = dateTime;
      });
    }
  }

  addTask() {
    print('Task Added.');
  }
}
