import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// +++++++++++++++++app bar Starts +++++++++++++++++++++
      appBar: AppBar(
        title: Text(
          "Ostad Practice",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.black12,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // icon
              InkWell(
                child: Icon(Icons.add_a_photo, size: 50, color: Colors.grey),
                onTap: () {
                  if (kDebugMode) {
                    print("ON Single Tap");
                  }
                },
                onDoubleTap: (){
                  if (kDebugMode) {
                    print("ON Double Tap");
                  }
                },
                onLongPress: (){
                  if (kDebugMode) {
                    print("ON Long Press");
                  }
                },
              ),

              // Icon Button
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Add Alarm Button Clicked");
                  }
                },
                icon: Icon(Icons.add_alarm, size: 50, color: Colors.grey),
              ),

              // text button
              TextButton(
                onPressed: () {
                  print("Text Button Clicked");
                },
                child: Text(
                  "Click here",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),

              // ++++++++++++++++++++++++++
              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              Text(
                "This is column",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      ),

      // _______________Row Starts_________________

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //
      //   child: Row(
      //       children: [
      //
      //             Text("This is row. ", style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: 25,
      //             ),),
      //
      //
      //         SizedBox(
      //           width: 20,
      //         ),
      //
      //         Text("This is row. ", style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 25,
      //         ),),
      //
      //         SizedBox(
      //           width: 20,
      //         ),
      //
      //
      //         Text("This is row. ", style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 25,
      //         ),),
      //
      //
      //         SizedBox(
      //           width: 20,
      //         ),
      //
      //         Text("This is row. ", style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 25,
      //         ),),
      //
      //
      //         SizedBox(
      //           width: 20,
      //         ),
      //
      //         Text("This is row. ", style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 25,
      //         ),),
      //
      //         SizedBox(
      //           width: 20,
      //         ),
      //
      //       ]
      //     ),
      // ),
    );
  }
}
