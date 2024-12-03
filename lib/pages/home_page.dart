import 'package:flutter/material.dart';
import 'package:sabya_tech/data/reminders.dart';
import 'package:sabya_tech/widgets/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed() {
    showDialog(
      context: context,
      builder: (context) => const DialogBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton.filledTonal(
        iconSize: 34,
        onPressed: onPressed,
        icon: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 4,
        title: const Text('Reminders'),
      ),
      body: ListView.builder(
          itemCount: reminders.length,
          itemBuilder: (context, index) {
            final reminder = reminders[index];
            return CheckboxListTile(
              value: reminder.value,
              onChanged: (value) {
                setState(() {
                  reminder.value = value!;
                });
              },
              title: Text(reminder.reminder),
              subtitle: Text(reminder.description),
            );
          }),
    );
  }
}
