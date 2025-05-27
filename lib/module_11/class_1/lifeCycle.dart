import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lifeCycle_page2.dart';

class lifeCycle extends StatefulWidget {
  const lifeCycle({super.key});

  @override
  State<lifeCycle> createState() => _lifeCycleState();
}

class _lifeCycleState extends State<lifeCycle> {
  @override
  void initState() {
    // TODO: implement initState
    print("This is Life Cycle page initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("This is did change Dependencies State");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Life Cycle of Flutter App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {

                // Navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => lifeCyclePage2(),
                  ),
                );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Click Me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
