import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flutter_class_2 extends StatelessWidget {
  const flutter_class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        title: Text(
          "flutter_class_3",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      //////////////////////////////////////////////////////////////////////////
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                print("Normal Button Clicked");
              },
              child: Text(
                "Normal Button",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(
              height: 50,
              width: double.infinity,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print("full width button clicked");
                },
                child: Text("full width button"),
              ),
            ),

            GestureDetector(
              onDoubleTap: () {
                print("Double Tapped");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              onTap: () {
                print("Single Tapped");
              },
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Outlined Button with Gesture Detector"),
              ),
            ),

            SingleChildScrollView(
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green, width: 2.5),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(8, 10),
                    blurRadius: 10,
                  ),
                ],
              ),

              child: Center(
                child: Column(
                  children: [
                    Text(
                      "This is Text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "This is Text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "This is Text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),

      //////////////////////////////////////////////////////////////////////////
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button Pressed");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
