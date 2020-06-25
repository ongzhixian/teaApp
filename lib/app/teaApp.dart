import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'pages/MyHomePage.dart';
import 'material/routes/homeRoute.dart' as material_pages;
//simport 'cupertino/pages/homePage.dart' as cupertino_pages;

class TaggedEventAttendanceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // We want to display different *App depending on its platform type.
    // We want to do this so that we can make the application look more
    // compliant to its native platform.
    // Platform.isIOS     // Returns true on iOS devices
    // Platform.isAndroid // Returns true on Android devices

    if (Platform.isIOS) {
      // ZX: Ignore cupertino for now; focus on Android/Material
      // return CupertinoApp(
      //   home: cupertino_pages.HomePage(),
      // );
    } else {
      // we default to using MaterialApp
      return MaterialApp(
        title: 'Tagged Event Attendance Scan',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: material_pages.HomePage(title: 'Tagged Event Attendance'),
      );
    }
  }
}
