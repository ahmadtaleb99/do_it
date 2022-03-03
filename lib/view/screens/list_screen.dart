import 'package:do_it/utils/constants.dart';
import 'package:do_it/view/screens/drawer.dart';
import 'package:do_it/view/widgets/List_screen/BuildTaskItems.dart';
import 'package:do_it/view/widgets/List_screen/RoundButton.dart';
import 'package:do_it/view/widgets/drawer/AddButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundButton(icon: Icon(Icons.check_rounded,color: Colors.white,),gradient: kPurpleGradient,),
        RoundButton(icon: SvgPicture.asset('assets/images/as.svg',fit: BoxFit.scaleDown,),width:  56.w,height:56.h  ,color: Colors.white,),
        RoundButton(icon: Icon(Icons.add,color: Colors.white,),gradient: kBlueGradient,),

      ],
      ),

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

      body: Stack(

        children: [
          SizedBox(
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
          BuildTaskItems()
        ],
      )
    );
  }
}
