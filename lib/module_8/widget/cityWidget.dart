
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final  String name , image, rating;
  const CityWidget({
    super.key, required this.name, required this.image, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 220,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Image.network(
                  image,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  bottom: 15,
                  left: 10,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Text(
            name,
            style: TextStyle(fontSize: 25,color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
