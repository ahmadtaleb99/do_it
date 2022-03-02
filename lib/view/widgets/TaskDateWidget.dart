import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TaskDateWidget extends StatefulWidget {
  const TaskDateWidget({Key? key}) : super(key: key);

  @override
  _TaskDateWidgetState createState() => _TaskDateWidgetState();
}

class _TaskDateWidgetState extends State<TaskDateWidget> {
  @override
 DateTime ?  _date ;
  Widget build(BuildContext context) {
    return           TextButton(
        onPressed: () {
          DatePicker.showDatePicker(context,
              showTitleActions: true,
              minTime: DateTime.now(),
              maxTime: DateTime(2023, 6, 7),
              onConfirm: (date) {
            setState(() {
              _date = date;

            });
              }, currentTime: DateTime.now(), locale: LocaleType.en);
        },
        child: Text(
       _date.toString(),
          style: TextStyle(color: Colors.blue),
        ));

  }
}
