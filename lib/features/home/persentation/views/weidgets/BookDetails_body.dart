import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailsappbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [BookdetailsAppbar()],
      ),
    );
  }
}
