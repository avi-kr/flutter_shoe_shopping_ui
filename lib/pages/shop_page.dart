import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_ui/components/shoe_tile.dart';
import 'package:shopping_app_ui/models/cart.dart';
import 'package:shopping_app_ui/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // add shoe to cart
    void addShoeToCart(Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
      // alert the user, shoe successfully added
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        ),
      );
    }

    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // Search Bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          // Message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'everyone flies.. some fly longer then others.',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          // Hot Picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: value.getShoeList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // Create a Shoe
                Shoe shoe = value.getShoeList()[index];

                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
