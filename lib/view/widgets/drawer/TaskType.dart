import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskType extends StatelessWidget {
  const TaskType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(scrollDirection :Axis.horizontal,itemBuilder: ( context, int index) {
        return IconButton(onPressed: (){

        }, icon: iconsList[index] );
      },  itemCount: 6,),
    );
  }
}
