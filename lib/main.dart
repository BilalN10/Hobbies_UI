import 'package:flutter/material.dart';
import 'package:hobbies_ui_design/Screens/HomePage/HomePage.dart';
import 'package:hobbies_ui_design/Screens/Bottom_Navigation_Bar/navBarControl.dart';

import 'SizeConfig/SizeConfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Bookng Service',
              theme: ThemeData(primarySwatch: Colors.blue),

              ///  home: Application(),
              home: ProvidedStylesExample(),
            );
          },
        );
      },
    );
  }
}
