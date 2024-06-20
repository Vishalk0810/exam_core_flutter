import 'package:exam_core_flutter/Screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=> const HomeScreen(),
  };
}