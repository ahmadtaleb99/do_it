import 'package:do_it/logic/Todo/bloc/todo_bloc.dart';
import 'package:do_it/model/Todo/Todo.dart';
import 'package:do_it/utils/constants.dart';
import 'package:do_it/view/widgets/drawer/AddButton.dart';
import 'package:do_it/view/widgets/drawer/NameTextField.dart';
import 'package:do_it/view/widgets/drawer/TaskDateWidget.dart';
import 'package:do_it/view/widgets/drawer/TaskTypePicker.dart';
import 'package:do_it/view/widgets/drawer/TimeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

class DrawerWidget extends StatelessWidget {

    DrawerWidget({Key? key}) : super(key: key);
       late  String  _todoName;
    late String  _todoDescription;
    late DateTime _totoDate;
    late TodoType  _todoCategory;

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
                    TaskTypePicker(onChanged: (selected){
                    _todoCategory = selected;
                    })
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              GradientTextField(label: Text('Name'),onChanged: (name){_todoName = name ;},),
              SizedBox(height: 30.h,),
              Text(
                'Description',
                style: kDrawerHeader,
              ),
              SizedBox(height: 9  .h,),
              TextField(
                onChanged: (description){
                  _todoDescription = description;

                },
                maxLines: 4,
            textDirection: TextDirection.ltr,
            decoration: kDescriptionDecoration,
          ),

              DateWidget(
                onChanged: (date){
                    _totoDate = date;
                },
              ),
              SizedBox(height:30.h),
              TimeWidget(onChanged: (date){

                print(date);
              },),
              SizedBox(height:50.h),
              AddButton(onPressed: (){
                    var todo = Todo(description: _todoDescription, title: _todoName, date: _totoDate, todoType: _todoCategory, isCompleted: false);
                    context.read<TodoBloc>().add(TodoAdded(todo: todo));
                    print(_todoDescription);
                    print(todo.toString());
              },)



            ],
          ),
        ),
      ),
      semanticLabel: 'NEW TASK',

    );
  }
}
