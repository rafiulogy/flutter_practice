import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  const gridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        titleTextStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
      ),

      // _____________________ GridView Counter _________________________
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(25, (index) {
      //     return Card(
      //       elevation: 2,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       child: Padding(
      //         padding: EdgeInsets.all(10),
      //
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: [
      //                 Icon(Icons.phone, color: Colors.blue),
      //                 Spacer(),
      //                 Icon(Icons.delete, color: Colors.red),
      //               ],
      //             ),
      //             SizedBox(height: 10),
      //
      //             Text(
      //               "Jon",
      //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),
      //
      //             ),
      //             Text("017929562"),
      //           ],
      //         ),
      //       ),
      //     );
      //   }),
      // ),

      // +++++++++++++++++++Gird View Builder++++++++++++++++++++++++++++

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 25,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone, color: Colors.white),
                  const SizedBox(height: 10),
                  const Text(
                    "Send Money",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
