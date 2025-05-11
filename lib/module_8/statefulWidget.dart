import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_practice/module_8/widget/cityWidget.dart';

class statefulWidget extends StatefulWidget {
  const statefulWidget({super.key});

  @override
  State<statefulWidget> createState() => _statefulWidgetState();
}

class _statefulWidgetState extends State<statefulWidget> {


  int counter = 0;

  // for initialization  before entering the State
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 15),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Icon(Icons.plus_one, size: 25, color: Colors.red),
                  ),

                  SizedBox(width: 25),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Icon(
                      Icons.exposure_minus_1,
                      size: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(


                children: [

                  CityWidget(name: "Dhaka", image: "https://www.bproperty.com/blog/wp-content/uploads/Trending-Commercial-Areas-in-Dhaka-Cover.jpg",rating: "3.2",),

                  CityWidget(name: "Chattogram", image: "https://www.shutterstock.com/image-photo/elevated-expressway-lalkhan-bazar-shaamanat-600nw-2519670575.jpg",rating: "4.2",),



                  CityWidget(name: "Sylhet", image: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Sylhet%2C_by_Murshed.jpg",rating: "4.0",),

                ],


              ),
            )

          ],
        ),
      ),
    );
  }
}
