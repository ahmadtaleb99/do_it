import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(

          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.black ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            label: Text('Name'),
            labelStyle: kDrawerHeader,
          ),


        ),
        Positioned(
          bottom: -1,
          child: Container(
            width: 255.w,
            height: 2,
            decoration: BoxDecoration(
                gradient: kLinearGradient
            ),
          ),
        )
      ],
    );
  }
}
