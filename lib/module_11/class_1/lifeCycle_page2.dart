import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lifeCyclePage2 extends StatefulWidget {
  const lifeCyclePage2({super.key});

  @override
  State<lifeCyclePage2> createState() => _lifeCyclePage2State();
}

class _lifeCyclePage2State extends State<lifeCyclePage2> {
  
  @override
  void initState() {
    // TODO: implement initState
    print("This is Life Cycle page 2 initState");
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose

    print("This is Life Cycle page 2 dispose");
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Life Cycle page 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        centerTitle: true,
      ),
    );
  }
}
