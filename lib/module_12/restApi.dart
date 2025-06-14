import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class RestApi extends StatefulWidget {
  const RestApi({super.key});

  @override
  State<RestApi> createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  List users = [];
  bool isLoading = false;

  // ++++++++++++++Api Calling Function +++++++++++++++++
  Future<void> fetchUsers() async {
    setState(() {
      isLoading = true;
    });

    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products/"),
      headers: {'Accept': 'application/json'},
    );

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      users = jsonDecode(response.body);
    } else {
      throw Exception('Sometging worong');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "Online Shop",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.sp),
            child: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),

      body: Column(
        children: [
          Divider(
            color: Colors.grey, // line color
            thickness: 1, // line thickness
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "View Collection",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 15.sp,
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "View All",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(width: 5.sp),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10.sp,
                      color: Colors.grey.shade700,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10.sp),

          // _______________________
          Expanded(
            child:
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return Card(
                          child: Stack(
                            children: [
                              // Product Image
                              Card(
                                child: Image.network(
                                  user['image'],
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),

                              // Positioned Text at the Bottom
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  color: Colors.white.withOpacity(0.7), // optional background
                                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                  child: Text(
                                    user['title'],
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
