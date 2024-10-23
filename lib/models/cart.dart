import 'package:shopping_app_ui/models/shoe.dart';

class Cart {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/1.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/2.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/2.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/4.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/5.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/6.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/7.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
    Shoe(
      name: 'Lorem Ipsum',
      price: '123',
      imageUrl: 'lib/images/8.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    ),
  ];

// List of items in user cart
  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

// remote item from cart
  void deleteItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
