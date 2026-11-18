import 'package:ecommerce_app_ui/components/cart_item.dart';
import 'package:ecommerce_app_ui/models/cart.dart';
import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context, value, child)=>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cart',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUsercart().length,
                itemBuilder: (context, index){
                  
                  //get each shoe
                  Shoe individualShoe = value.getUsercart()[index];
                  //return the cart item
                  return CartItem(
                    shoe: individualShoe,
                  );

                },
                ),
            ),
          ],
        ),
      ),
    );
  }
}