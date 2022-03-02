import 'package:do_it/utils/constants.dart';
import 'package:do_it/view/widgets/NameTextField.dart';
import 'package:do_it/view/widgets/TaskType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {

  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      child: Padding(
        padding:  EdgeInsets.only(bottom :13.h,top: 33.h,right: 14.w,left: 14.w),
        child: Container(
          width: 255.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('NEW TASK',style: GoogleFonts.baloo(fontSize: 20.sp,color: Colors.black),),
              SizedBox(height: 30.h,),
              Container(
                width: 250.w,
                height: 62.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Icon',
                      style: kDrawerHeader,
                    ),
                    Expanded(
                      child: Row(

                        children: [
                          TaskType(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              NameTextField(),
              SizedBox(height: 30.h,),
              Text(
                'Description',
                style: kDrawerHeader,
              ),
              SizedBox(height: 9  .h,),
              TextField(
                maxLines: 4,
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(

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
            ),
          )




            ],
          ),
        ),
      ),
      semanticLabel: 'NEW TASK',

    );
  }
}
