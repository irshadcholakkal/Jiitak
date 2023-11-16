import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jiitaktestui/view/mobile/homepage_mobile.dart';
import 'package:jiitaktestui/view/tablet/homePageTablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() { 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(canvasColor: Colors.transparent),
        home: 
         ScreenTypeLayout.builder(
          mobile: (p0) => const HomePage(),
          tablet: (p0) => const HomePageTablet(),
        )
        );
  }
}
