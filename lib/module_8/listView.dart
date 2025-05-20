import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"), centerTitle: true),

      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return  Card(
            child: ListTile(
              leading: Icon(Icons.call),
              trailing: Icon(Icons.delete),
              title: Text("Rafiul") ,
              subtitle: Text("0164545150$index"),
            
            
            
            ),
          );
        },
      ),
    );
  }
}
