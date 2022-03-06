import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'NameTextField.dart';


class DateWidget extends StatelessWidget {
    DateWidget({Key? key, required this.onChanged}) : super(key: key);
  final Function onChanged ;



  var _controller  = TextEditingController();
  @override
 DateTime ?  _date ;
  Widget build(BuildContext context) {

    return               InkWell(onTap : () {
      DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime.now(),
                    maxTime: DateTime(2023, 6, 7),
                    onConfirm: (date) {
        _controller.text = DateFormat('d - MMMM - y').format(date) ;
                      onChanged(date);
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
    },child: GradientTextField(suffix: Icon(Icons.arrow_drop_down,color: Colors.black,),enabled: false,label: Text('Date'),controller: _controller,));

  }
}
