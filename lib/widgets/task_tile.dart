import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool? isChecked;
  final String? text;
  final Function(bool?)? onChanged;
  final Function()? onLongPress;

  TasksTile({this.isChecked, this.text, this.onChanged, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: isChecked! ? onLongPress : null,
        title: Text(
          text!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null,
              fontSize: 16),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: onChanged,
        ));
  }
}
