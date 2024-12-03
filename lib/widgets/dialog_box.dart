import 'package:flutter/material.dart';
import 'package:sabya_tech/data/reminders.dart';
import 'package:sabya_tech/model/reminder.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  final reminderController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    reminderController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 200,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add a Reminder',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            //reminder
            TextField(
              decoration: const InputDecoration(label: Text('Reminder')),
              controller: reminderController,
            ),
            //description
            TextField(
              decoration: const InputDecoration(label: Text('Description')),
              controller: descriptionController,
             
            ),
            const Spacer(),
            //add - cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //add
                TextButton(
                  onPressed: () {
                    setState(() {
                      reminders.add(Reminder(
                          reminder: reminderController.text,
                          description: descriptionController.text));
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text('Add'),
                ),
                //cancel
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
