import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookdetailsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_outlined)),
      ],
    );
  }
}
