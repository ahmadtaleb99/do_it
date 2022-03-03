import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'NameTextField.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({Key? key}) : super(key: key);

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
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
      DatePicker.showTimePicker(context,
          showTitleActions: true,
          onConfirm: (date) {
            setState(() {
              _date = date;

            });
          }, currentTime: DateTime.now(), locale: LocaleType.en);
    },child: GradientTextField(suffix: Icon(Icons.arrow_drop_down,color: Colors.black,),enabled: false,label: Text('Time'),));

  }
}
