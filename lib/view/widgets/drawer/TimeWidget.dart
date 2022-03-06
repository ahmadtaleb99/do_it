import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import 'NameTextField.dart';

class TimeWidget extends StatelessWidget {
   TimeWidget({Key? key, required this.onChanged}) : super(key: key);
   final Function onChanged ;
   final _controller = TextEditingController();

  @override
  DateTime ?  _date ;
  Widget build(BuildContext context) {

    return               InkWell(onTap : () {
      DatePicker.showTimePicker(context,
          showTitleActions: true,
          onConfirm: (date) {
            onChanged(date);
            _controller.text = DateFormat.jm().format(date);
          }, currentTime: DateTime.now(), locale: LocaleType.en);
    },child: GradientTextField(suffix: Icon(Icons.arrow_drop_down,color: Colors.black,),enabled: false,label: Text('Time'),controller: _controller,));

  }
}
