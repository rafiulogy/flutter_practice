import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:ostad_practice/flutter_class_3.dart';
import 'package:ostad_practice/module_10/login.dart';
import 'package:ostad_practice/module_8/class_1.dart';
import 'package:ostad_practice/module_8/class_2.dart';
import 'package:ostad_practice/module_8/data_passing_via_routing.dart';
import 'package:ostad_practice/module_8/gridView.dart';
import 'package:ostad_practice/module_8/listView.dart';
import 'package:ostad_practice/module_8/login_page(class-1_practice).dart';
import 'package:ostad_practice/module_9/app(TODO).dart';
import 'package:ostad_practice/module_9/class_2.dart';
import 'package:ostad_practice/module_9/class_3.dart';
import 'flutter_class_2.dart';
import 'module_8/statefulWidget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          home: child,
        );
      },
      child: login(),
    );
  }
}
