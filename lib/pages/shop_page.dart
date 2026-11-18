import 'package:ecommerce_app_ui/components/shoe_tile.dart';
import 'package:ecommerce_app_ui/models/cart.dart';
import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart method
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);


     showDialog(context:context, builder:(context) => AlertDialog(
      title: Text('Sucessfully Added!'),
      content: Text('Check your Cart'),
     ),
  );

  }

  //alert the user when something change like added shoe to the cart
 

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child)=> Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(24),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',
              style: TextStyle(
                color: Colors.grey[600],
              ),
              ),
              Icon(Icons.search_rounded,
              color: Colors.blueGrey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Text('Everyone flies. Some fly longer than others',
          style: TextStyle(
            color: Colors.grey[600],
          ),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks🔥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
          
              ),
              ),
              Text('See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
          
              ),
              ),
          
            ],
          ),
        ),

        const SizedBox(
          height: 30,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              //get shoes
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(shoe: shoe,
              onTap:() => addShoeToCart(shoe),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16,),
          child: Divider(
            color: Colors.white,
          ),
        )

      ],

    ),
    );
  }
}