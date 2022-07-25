/*
Created by Axmadjon Isaqov on 16:37:40 25.07.2022
© 2022 @axi_dev 
*/
import 'package:flutter/material.dart';
import 'package:navigate/pages/screen_1/sceen_one.dart';
import 'package:navigate/pages/screen_2/screen_two.dart';
import 'package:navigate/pages/screen_3/screen_three.dart';
import 'package:navigate/pages/screen_4/screen_four.dart';

class RouteGenerate {
  static const initialRoute = '/screen_1';
  static Route<dynamic>? notFound(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return const ScreenFour();
    });
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenOne.routeName:
        return MaterialPageRoute(builder: (context) => const ScreenOne());
      case ScreenTwo.routeName:
        final Map<String, dynamic>? mp =
            settings.arguments as Map<String, dynamic>?;
        if (mp!.containsKey('data') && mp.isNotEmpty) {
          return MaterialPageRoute(
              builder: (context) => ScreenTwo(
                    data: mp['data'],
                  ));
        }
        return MaterialPageRoute(builder: (context) => const ScreenFour());
      case ScreenThree.routeName:
        return MaterialPageRoute(builder: (context) => const ScreenThree());
    }

    return MaterialPageRoute(builder: (context) => const ScreenFour());
  }
}
