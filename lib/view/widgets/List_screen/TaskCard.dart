import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('${widget.index} '),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        setState(() {
          opacity = visiblePercentage / 100;
        });
        debugPrint(
            'opacity $opacity'
                'Widget ${visibilityInfo.key  } is ${visiblePercentage}% visible');
      },
      child: Opacity(
        opacity: opacity ,
        child: Container(
          margin: EdgeInsets.only(left: 20.w,right: 20.w,top: 15,),
          width: 320.w,
          height: 52.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                iconsList[widget.index >= 5 ? 0 : widget.index],
                SizedBox(width  : 10.w,),
                Flexible(
                  child: Text('this is $opacity a task generated by ahmad taleb the best in the world ',style:
                  kTaskStyle,overflow: TextOverflow.ellipsis,),

                ),
                SizedBox(width: 10.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${widget.index} Jun',style: GoogleFonts.lato(fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 2.h,),
                    Text('asd')

                  ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
