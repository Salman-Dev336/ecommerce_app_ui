import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      width: 360,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          //description
          Text(shoe.description, style: TextStyle(color: Colors.grey[600])),

          //price and details
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
            
                    const SizedBox(
                      height: 10,
                    ),
            
                    //price
                    Text(
                      '\$' + shoe.price,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),),
                  ],
                ),
            
                //add to cart button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
