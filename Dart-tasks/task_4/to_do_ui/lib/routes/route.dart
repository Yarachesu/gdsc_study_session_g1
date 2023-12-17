import 'package:flutter/material.dart';
import 'package:to_do_ui/first_page.dart';
import 'package:to_do_ui/fourthpage.dart';
import 'package:to_do_ui/secondpage.dart';
import 'package:to_do_ui/thirdpage.dart';

class RouteManager {
  static const String first = '/';
  static const String second = '/second';
  static const String third = '/third';
  static const String fourth = '/fourth';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case first:
        return MaterialPageRoute(
          builder: (context) => firstPage(),
        );
      case second:
        return MaterialPageRoute(
          builder: (context) => secondPage(),
        );
      case third:
        return MaterialPageRoute(
          builder: (context) => thirdPage(),
        );
      case fourth:
        return MaterialPageRoute(
          builder: (context) => fourthPage(),
        );
      default:
        throw FormatException('route not found cheak the routes');
    }
  }
}
