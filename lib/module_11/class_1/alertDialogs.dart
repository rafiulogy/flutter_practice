import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alertDialogs extends StatefulWidget {
  const alertDialogs({super.key});

  @override
  State<alertDialogs> createState() => _alertDialogsState();
}

class _alertDialogsState extends State<alertDialogs> {
  // ++++++++++++++++ Alert Dialog Method ++++++++++++++++++++

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert Dialog Title"),
          content: Text("This is the content of the alert dialog."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("YES"),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("NO"),
            ),
          ],
        );
      },
    );
  }

  // +++++++++++++++++ Simple Alert Dialog Method ++++++++++++++++++++
  void showSimpleAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Simple Alert Dialog Title"),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("This is the content of the simple alert dialog."),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Option 1", textAlign: TextAlign.center),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Option 2", textAlign: TextAlign.center),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Option 3", textAlign: TextAlign.center),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Option 4", textAlign: TextAlign.center),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Option 5", textAlign: TextAlign.center),
            ),
          ],
        );
      },
    );
  }

  // ______________________Bottom sheet __________________________
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Choose Your Answer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                ListTile(
                  title: Text("Option 1", textAlign: TextAlign.center),
                  onTap: () {},
                ),

                ListTile(
                  title: Text("Option 2", textAlign: TextAlign.center),
                  onTap: () {},
                ),

                ListTile(
                  title: Text("Option 3", textAlign: TextAlign.center),
                  onTap: () {},
                ),
              ],
            ),
          ),
    );
  }

  // ++++++++++++++++++show Alert Dialog with Icon ++++++++++++++++++++
  void showAlertDialogWithIcon(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      title: Text('Installation block'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning,color: Colors.red,size: 40,),
              SizedBox(width: 5,),
              Text('Fudie Admin'),

            ],
          ),
          SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec', style: TextStyle(color: Colors.grey),)


        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Ok'))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alert Dialogs",
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
                showAlertDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Alert Dialog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                showSimpleAlertDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Simple Alert Dialog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                showBottomSheet(context);
              },
              child: Text(
                "Bottom Sheet",
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                showAlertDialogWithIcon();
              },
              child: Text(
                "Alert Dialog With Icon",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
