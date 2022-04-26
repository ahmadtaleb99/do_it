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
TextStyle kDateStyle =  GoogleFonts.lato(
    fontSize: 14,
    color: kDateColor.withOpacity(0.8),
  fontWeight: FontWeight.bold,

);


const kDateColor =  Color(0xff181743);


 const  kPurpleGradient =LinearGradient(colors: [
   Color(0xffFE1E9A),
   Color(0xff254DDE)
 ]);

const  kBlueGradient =LinearGradient(colors: [
  Color(0xff254DDE),
  Color(0xff00FFFF),
]);

 InputDecoration kDescriptionDecoration = InputDecoration(

contentPadding: EdgeInsets.all(12),
fillColor: Colors.white,
filled: true,
errorStyle: const TextStyle(),
hintStyle:  TextStyle(
color: Colors.grey.withOpacity(0.250)
),
enabledBorder: OutlineInputBorder(

borderSide:  BorderSide(color: Colors.grey.withOpacity(0.250)),
borderRadius: BorderRadius.circular(5)),
focusedBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.grey.withOpacity(0.250)),
borderRadius: BorderRadius.circular(5)),
errorBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.grey.withOpacity(0.250)),
borderRadius: BorderRadius.circular(5)),
);












var iconsList = [

  SvgPicture.asset('assets/images/gymIcon.svg', fit: BoxFit.fill,),
  SvgPicture.asset('assets/images/locationIcon.svg'),
  SvgPicture.asset('assets/images/sportIcon.svg',fit: BoxFit.scaleDown),
  SvgPicture.asset('assets/images/shoppingIcon.svg',fit: BoxFit.cover,),
  SvgPicture.asset('assets/images/partyIcon.svg'),
  SvgPicture.asset('assets/images/otherIcon.svg'),
];