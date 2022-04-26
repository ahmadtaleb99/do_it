import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundBlueButton extends StatelessWidget {
  const RoundBlueButton ({Key? key, required this.onPressed, required this.text}) : super(key: key);
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 132.w,
        height: 46.h,
        decoration: BoxDecoration(
          gradient: kBlueGradient,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(text,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}
