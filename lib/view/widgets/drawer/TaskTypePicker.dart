import 'package:do_it/model/Todo/Todo.dart';
import 'package:do_it/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskTypePicker extends StatefulWidget {
  TaskTypePicker({Key? key, required this.onChanged}) : super(key: key);
  @override
  State<TaskTypePicker> createState() => _TaskTypePickerState();
  final Function onChanged;

}

TodoType _current = TodoType.GOING;

class _TaskTypePickerState extends State<TaskTypePicker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return IconButton(
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: _current  == TodoType.values[index]
                              ? Colors.black
                              : Colors.transparent,
                          width: 3),
                      shape: BoxShape.circle),
                  child: iconsList[index]),
              onPressed: () {
                  setState(() {
                    print(TodoType.values[index]);
                  _current = TodoType.values[index];
                });
                  widget.onChanged(_current);
              },
            );
          },
          itemCount: iconsList.length,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 0.w,
              )),
    );
  }
}
