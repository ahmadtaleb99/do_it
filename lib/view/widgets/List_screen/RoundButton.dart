import 'dart:core';

import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({Key? key, required this.icon, this.width,this.height, this.gradient, this.color}) : super(key: key);
    final Widget icon;
  final   double? width;
  final double? height;
    final Gradient? gradient;
    final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.blue,
      child: InkWell(

        splashColor: Colors.grey.withOpacity(0.4),
        onTap: (){
          print('hel');
        },
        child: Container(
          width: width ?? 46.w,
          height: height ?? 46.h,
          child: icon,
          decoration: BoxDecoration(

            // color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(50),
            // gradient: gradient ?? null
          ),
        ),
      ),
    );
  }
}
