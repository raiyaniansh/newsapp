import 'package:flutter/material.dart';
import 'package:newsapp/screen/bottom/provider/bottom_provider.dart';
import 'package:newsapp/screen/bottom/view/bottom_screen.dart';
import 'package:newsapp/screen/home/provider/home_provider.dart';
import 'package:newsapp/screen/home/view/home_screen.dart';
import 'package:newsapp/screen/second/view/second_screen.dart';
import 'package:newsapp/screen/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => BottomProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => SplashScreen(),
          'bottom':(context) => BottomScreen(),
          'news':(context) => NewsScreen(),
        },
      ),
    ),
  );
}
