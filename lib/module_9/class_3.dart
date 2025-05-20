import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../module_8/widget/cityWidget.dart';

class classThree extends StatefulWidget {
  const classThree({super.key});

  @override
  State<classThree> createState() => _classThreeState();
}

class _classThreeState extends State<classThree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Class 3 ",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Favourites"),
              Tab(text: "Settings"),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.network(
                        "https://img.freepik.com/premium-vector/male-face-avatar-icon-set-flat-design-social-media-profiles_1281173-3806.jpg?semt=ais_hybrid&w=740",
                      ),
                    ),
                    Text(
                      "Rafiul Islam",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "rafiul99.ri@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.home),
                onTap: () {},
              ),
              Divider(color: Colors.black),
              ListTile(
                title: Text(
                  "Favourites",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.star),
                onTap: () {},
              ),
              Divider(color: Colors.black),
              ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.settings),
                onTap: () {},
              ),
              Divider(color: Colors.black),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // Center(child: Icon(Icons.home,size: 100,)),
            // Center(child: Icon(Icons.star,size: 100,)),
            // Center(child: Icon(Icons.settings,size: 100,)),
            CityWidget(
              name: "Dhaka",
              image:
                  "https://www.bproperty.com/blog/wp-content/uploads/Trending-Commercial-Areas-in-Dhaka-Cover.jpg",
              rating: "3.2",
            ),
            CityWidget(
              name: "Chattogram",
              image:
                  "https://www.shutterstock.com/image-photo/elevated-expressway-lalkhan-bazar-shaamanat-600nw-2519670575.jpg",
              rating: "4.2",
            ),

            CityWidget(
              name: "Sylhet",
              image:
                  "https://upload.wikimedia.org/wikipedia/commons/a/ad/Sylhet%2C_by_Murshed.jpg",
              rating: "4.0",
            ),
          ],
        ),
      ),
    );
  }
}
