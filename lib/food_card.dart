import 'package:flutter/material.dart';
import 'package:food_catogary/order_pages/order_page1.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String description;
  final VoidCallback? onPressed;

  const FoodCard({
    Key? key,
    required this.image,
    required this.description,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(description),
          SizedBox(height: 8.0),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(10),
              backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
              shape: MaterialStateProperty.all<OutlinedBorder>(
               RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(10),
                   bottomLeft: Radius.circular(10),
                 )
               )

              )
            ),

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>order_page1(title: ' ',)),);

            }, child: Text("Order"),

          ),
        ],
      ),
    );
  }
}
