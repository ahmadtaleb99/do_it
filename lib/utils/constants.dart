import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

  ThemeData kLightTheme = ThemeData(
    primaryColor: Colors.black,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme:  AppBarTheme(color: Colors.white,
    titleTextStyle:   GoogleFonts.baloo(fontSize: 20.sp,color: Colors.black)
    ));


 TextStyle kDrawerHeader =  GoogleFonts.lato(
color: Colors.black.withOpacity(0.2),
fontWeight: FontWeight.bold,
fontSize: 13
);


TextStyle kTaskStyle =  GoogleFonts.lato(
    fontSize: 14
);

 var iconsList = [
   SvgPicture.asset('assets/images/gymIcon.svg'),
   SvgPicture.asset('assets/images/locationIcon.svg'),
   SvgPicture.asset('assets/images/sportIcon.svg'),
   SvgPicture.asset('assets/images/shoppingIcon.svg'),
   SvgPicture.asset('assets/images/partyIcon.svg'),
   SvgPicture.asset('assets/images/otherIcon.svg'),
 ];


 const  kPurpleGradient =LinearGradient(colors: [
   Color(0xffFE1E9A),
   Color(0xff254DDE)
 ]);

const  kBlueGradient =LinearGradient(colors: [
  Color(0xff254DDE),
  Color(0xff00FFFF),
]);