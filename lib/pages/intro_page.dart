import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              //logo
              Image.asset('lib/images/image.png',
              height: 300,
              ),
              const SizedBox(
                height: 60,
              ),
              Text('Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              ),
          
              const SizedBox(
                height: 30,
              ),
          
                Text('Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 200,
              ),

              //button for start now

              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text('Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}