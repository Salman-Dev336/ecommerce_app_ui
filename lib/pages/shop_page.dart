import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          padding: const EdgeInsets.symmetric(vertical: 25),
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

      ],

    );
  }
}