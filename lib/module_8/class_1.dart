import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    // to change the notification bar color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.teal, // 👈 Notification bar color
        statusBarIconBrightness: Brightness.light, // Light or dark icons
      ),
      // to change the status bar color ends here

      // controllers
    );


    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Login Page",
      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.teal,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Welcome Back!! \n Glad to see you again.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.grey) ,
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 2.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),

                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Password"),
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock, color: Colors.grey),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
               style: ElevatedButton.styleFrom(
               backgroundColor: Colors.teal,
                 shape: RoundedRectangleBorder(

                   borderRadius: BorderRadius.circular(10),

                 ),

               ),

              onPressed: () {

                 print(emailController.text);
                 print(passwordController.text);
                 emailController.clear();
                 passwordController.clear();

              },
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
