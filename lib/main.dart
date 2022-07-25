import 'package:flutter/material.dart';
import 'package:navigate/router/route_generate.dart';

/*
Created by Axmadjon Isaqov on 16:45:53 25.07.2022
© 2022 @axi_dev 
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => RouteGenerate.generateRoute(settings),
      onUnknownRoute: (settings) => RouteGenerate.notFound(settings),
      initialRoute: RouteGenerate.initialRoute,
    );
  }
}
