import 'dart:math';

import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientTextField extends StatelessWidget {
  const GradientTextField({Key? key, this.suffix, this.enabled, this.label}) : super(key: key);
    final Widget ? suffix;
    final Widget ? label;
    final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          enabled: enabled,

          // onTap: (){
          //   DatePicker.showDatePicker(context,
          //       showTitleActions: true,
          //       minTime: DateTime.now(),
          //       maxTime: DateTime(2023, 6, 7),
          //       onConfirm: (date) {
          //         // setState(() {
          //         //   _date = date;
          //         //
          //         // });
          //       }, currentTime: DateTime.now(), locale: LocaleType.en);
          // },
          decoration: InputDecoration(

            suffixIcon:     Padding(
              padding: const EdgeInsets.only(top: 17),
              child: suffix,
            ),
            enabledBorder: UnderlineInputBorder(

              borderSide: BorderSide(color:Colors.black ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            label: label,
            labelStyle: kDrawerHeader,
          ),


        ),
        Positioned(
          bottom: -1,
          child: Container(
            width: 255.w,
            height: 2,
            decoration: BoxDecoration(
                gradient: kPurpleGradient
            ),
          ),
        )
      ],
    );
  }
}
