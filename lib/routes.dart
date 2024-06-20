import 'package:exam_core_flutter/Screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/details Page/details_screen.dart';
import 'Screens/home_screen2/home_screen2.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=> const HomeScreen(),
    '/detail':(context)=> const DetailsScreen(),
    '/home':(context)=> const HomeScreen2(),
  };
}