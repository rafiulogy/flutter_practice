import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_practice/flutter_class_3.dart';
import 'package:ostad_practice/module_8/class_1.dart';
import 'package:ostad_practice/module_8/class_2.dart';
import 'package:ostad_practice/module_8/data_passing_via_routing.dart';
import 'package:ostad_practice/module_8/gridView.dart';
import 'package:ostad_practice/module_8/listView.dart';
import 'package:ostad_practice/module_8/login_page(class-1_practice).dart';
import 'flutter_class_2.dart';
import 'module_8/statefulWidget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ostad Flutter Batch 10",
      home: statefulWidget(),
    );
  }
}
