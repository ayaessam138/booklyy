import 'package:flutter/material.dart';

class BookdetailsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_outlined)),
      ],
    );
  }
}
