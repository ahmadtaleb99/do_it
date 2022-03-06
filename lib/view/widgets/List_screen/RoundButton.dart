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
      color: Colors.transparent,
      child: InkWell(
        borderRadius:BorderRadius.circular(50),
        onTap: (){},
        child: Ink(
          width: width ?? 46.w,
          height:height ?? 46.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color ?? Colors.white,
              gradient: gradient ?? null
          ),
          child:icon,
        ),
      ),
    );
  }
}
