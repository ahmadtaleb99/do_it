import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'NameTextField.dart';

class TaskDateWidget extends StatefulWidget {
  const TaskDateWidget({Key? key}) : super(key: key);

  @override
  _TaskDateWidgetState createState() => _TaskDateWidgetState();
}

class _TaskDateWidgetState extends State<TaskDateWidget> {
  @override
 DateTime ?  _date ;
  Widget build(BuildContext context) {
    // return           TextButton(
    //
    //   style: TextButton.styleFrom(
    //     shape: RoundedRectangleBorder()
    //   ),
    //     onPressed: () {
    //       DatePicker.showDatePicker(context,
    //           showTitleActions: true,
    //           minTime: DateTime.now(),
    //           maxTime: DateTime(2023, 6, 7),
    //           onConfirm: (date) {
    //         setState(() {
    //           _date = date;
    //
    //         });
    //           }, currentTime: DateTime.now(), locale: LocaleType.en);
    //     },
    //     child: Text(
    //    // _date.toString(),
    //       'hello sadplsapd ',
    //       style: TextStyle(color: Colors.blue),
    //     ));
    return               InkWell(onTap : () {
      DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime.now(),
                    maxTime: DateTime(2023, 6, 7),
                    onConfirm: (date) {
                  setState(() {
                    _date = date;

                  });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
    },child: GradientTextField(suffix: Icon(Icons.arrow_drop_down,color: Colors.black,),));

  }
}
