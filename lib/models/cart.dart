import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier{
  //list of shoes of cart

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '250',
      imagePath: 'lib/images/orange.png',
      description: 'Comfortable basketball shoes for everyday use.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '300',
      imagePath: 'lib/images/Airjordan.png',
      description: 'Stylish sneakers with excellent comfort and support.',
    ),
    Shoe(
      name: 'Air Max',
      price: '280',
      imagePath: 'lib/images/green.png',
      description: 'Lightweight shoes with soft cushioning.',
    ),
    Shoe(
      name: 'Kyrie Infinity',
      price: '270',
      imagePath: 'lib/images/airmax.jpg',
      description: 'Performance basketball shoes with great grip.',
    ),
  ];

  //list of items in cart

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUsercart() {
    return userCart;
  }

  //add items to the cart

  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //removing items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
