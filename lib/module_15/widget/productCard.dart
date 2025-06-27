import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostad_practice/module_15/models/productModel.dart';

class productCard extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final Data product;

  const productCard({
    super.key,
    required this.onEdit,
    required this.onDelete,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 130.h,
            child: Image.network(product.img.toString(), fit: BoxFit.contain),
          ),

          Text(
            product.productName.toString(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          ),

          Text(
            "Price : ${product.unitPrice.toString()} || QTY : ${product.qty.toString()}",
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  onEdit();
                },
                icon: Icon(Icons.edit, color: Colors.green),
              ),
              IconButton(
                onPressed: () {
                  onDelete();
                },
                icon: Icon(Icons.delete_forever, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
