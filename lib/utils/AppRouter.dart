import 'package:do_it/view/screens/list_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {


  static Route? onGenerateRoute (RouteSettings routeSettings){
    switch (routeSettings.name) {
      case '/' :
        return MaterialPageRoute(builder: (_) {
          return  ListScreen();
        });
        break;



      default: return null;
    }
  }
}