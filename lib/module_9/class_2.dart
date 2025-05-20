import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class classTwo extends StatefulWidget {
  const classTwo({super.key});

  @override
  State<classTwo> createState() => _classTwoState();
}

class _classTwoState extends State<classTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Class Two"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // +++++++++++++++++++++ Aspect Ratio ++++++++++++++++++++++++
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(color: Colors.red),
              ),

              AspectRatio(aspectRatio: 9/16,
                child: Container(
                  color: Colors.orange,
                ),
              ),

              AspectRatio(aspectRatio: 16/10,
                child: Container(
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 100,),
              // +++++++++++++++++++Expand - Flexible+++++++++++++++++++++++
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(flex: 2,child: Container(height: 50, color: Colors.teal)),

                    SizedBox(width: 10),

                    Expanded(
                      child: Container(height: 50, color: Colors.greenAccent),
                    ),
                    SizedBox(width: 10),

                    Expanded(child: Container(height: 50, color: Colors.yellow)),
                  ],
                ),
              ),
              SizedBox(height: 50),

              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(height: 60, color: Colors.teal),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(height: 60, color: Colors.yellow),
                  ),
                ],
              ),

              SizedBox(height: 100,),
              // ++++++++++++++++++ Fractional SizedBox +++++++++++++++++++++
              SizedBox(height: 10),
              FractionallySizedBox(
                widthFactor: 0.7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50),

              Container(
                margin: EdgeInsets.all(15),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FractionallySizedBox(
                  heightFactor: 0.22,
                  widthFactor: 0.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "This is Button",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),

              // ++++++++++++++ Flutter ScreenUtil Packages ++++++++++++++++++
              SizedBox(height: 100,),


              Container(
                margin: EdgeInsets.all(15),
                height: 500.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "This is Button",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
