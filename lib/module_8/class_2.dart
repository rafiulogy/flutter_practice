import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_practice/module_8/login_page(class-1_practice).dart';

class class2 extends StatelessWidget {
  const class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg",
              height: 100,
              width: 200,
              fit: BoxFit.cover,

            ),

            Image.asset(
                'asset/owl.png',
              height: 150,
              width: 250,
            ),


            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page()));


            },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.grey,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               )
             ), child:Text("Click Me",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),



            ),




          ],
        ),
      ),
    );
  }
}
