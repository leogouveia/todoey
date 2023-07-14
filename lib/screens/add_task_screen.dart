import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30.0,
          ),
        ),
        TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            // set bottom border to Colors.lightBlueAccent
            // set bottom border weight to 2.0
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlueAccent,
                width: 3.0,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue.shade600,
                width: 3.0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            // set button to use all width
            //  button use square corners
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            backgroundColor: Colors.lightBlueAccent,
          ),
          child: const Text("Add"),
        ),
      ],
    );
  }
}
