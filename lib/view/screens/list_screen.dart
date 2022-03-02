import 'package:do_it/view/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('TODO'),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) {
              return IconButton(onPressed: (){
                Scaffold.of(context).openEndDrawer();
              }, icon: SvgPicture.asset('assets/images/drawer_ico.svg',width: 23.w,height: 24.h,fit: BoxFit.scaleDown,));
            }
          )
        ],
        elevation: 0,

        // leading: ,

      ),

      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/background.png')
        //
        //   ),
        //
        // ),
        child: Image.asset('assets/images/background.png',fit: BoxFit.fill,),
      ),
    );
  }
}
