import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module_8/data_passing_via_routing.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();

  void info() {
    setState(() {
      _name.add(nameController.text);
      nameController.clear();
      _number.add(numberController.text);
      numberController.clear();
    });
  }

  // +++++++++++++++++++++++++++++++++++++++
  List<String> _name = [];
  List<String> _number = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  // +++++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------------------
      appBar: AppBar(
        title: Text("Contact List", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      /// _____________________________
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),

            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text("Name"),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: "Number",
                        hintStyle: TextStyle(color: Colors.grey),
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
                          return "Enter Name";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: numberController,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Number"),
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: "Number",
                        hintStyle: TextStyle(color: Colors.grey),

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
                          return "Enter NUmber";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  FractionallySizedBox(
                    widthFactor: 0.9,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),

                      onPressed: () {

                        info();


                      },
                      child: Text(
                        "Add",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),


            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(

                      title: Text(_name[index],style: TextStyle(color: Colors.red),),
                      subtitle: Text(_number[index]),
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () {


                        },
                        icon: Icon(Icons.call, color: Colors.blue),

                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
