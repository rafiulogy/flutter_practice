import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ostad_practice/module_8/data_passing_via_routing.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final _formkey = GlobalKey<FormState>();
  // +++++++++++++++++++++++++++++++++++++++
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // +++++++++++++++++++++++++++++++++++++++

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------------------
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.grey)),
        centerTitle: true,
      ),

      /// _____________________________
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
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text("Email"),
                        labelStyle: TextStyle(color: Colors.grey),
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

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Email";
                        } else if (!value.contains("@")) {
                          return "Please Enter Valid Email";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),

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

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Password";
                        } else if (value.length <= 6) {
                          return "Password Must Be at least 6 Character";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);

                      // emailController.clear();
                      // passwordController.clear();

                      if (_formkey.currentState!.validate()) {
                        // for showing snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Successful")),
                        );


                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dataPassing(email: emailController.text,password: passwordController.text,)));


                      }
                    },
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
