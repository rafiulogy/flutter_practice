import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_practice/flutter_class_3.dart';
import 'flutter_class_2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ostad Flutter Batch 10",
      home: flutter_class_2(),
    );
  }
}
