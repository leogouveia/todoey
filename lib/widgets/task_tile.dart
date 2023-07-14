import 'package:flutter/material.dart';
import '../utils/material_state_set.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Buy milk",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        onChange: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) onChange;

  const TaskCheckbox({
    super.key,
    required this.checkboxState,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      // fillColor to blue only when selected
      fillColor: MySpecialCheckboxColor(context),
      value: checkboxState,
      onChanged: onChange,
    );
  }
}

class MySpecialCheckboxColor implements MaterialStateProperty<Color?> {
  MySpecialCheckboxColor(this.context);

  final BuildContext context;

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.isSelected) {
      return Colors.lightBlueAccent;
    }
    return null;
  }
}
