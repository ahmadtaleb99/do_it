import 'package:do_it/utils/constants.dart';
import 'package:do_it/view/widgets/List_screen/TaskCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:visibility_detector/visibility_detector.dart';

class BuildTaskItems extends StatelessWidget {
  const BuildTaskItems({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // return ListView.separated(itemBuilder: (context,index){
    //    double opacity = 1.0;
    //   return TaskCard(index: index,);
    // }, separatorBuilder: (context,index) => SizedBox(height: 20.h,), itemCount: 17);





   return InViewNotifierList(
     initialInViewIds: ['0','1','2','3','4'],
      isInViewPortCondition:
          (double deltaTop, double deltaBottom, double viewPortDimension) {
            return deltaTop < (0.7 * viewPortDimension) ;
      },
      itemCount: 10,
      builder: (BuildContext context, int index) {
        return InViewNotifierWidget(
          id: '$index',
          builder: (BuildContext context, bool isInView, Widget  ? child) {

              return TaskCard(index: index,isInView: isInView);

          },
        );
      },
    );











  }
}
