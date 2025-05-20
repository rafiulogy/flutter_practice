import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dataPassing extends StatelessWidget {
  final String email;
  final String password;
  const dataPassing({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Passing via Routing"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Text(
              "email : $email",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),

            SizedBox(height: 10, width: 10),

            Text(
              "Password : $password",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
