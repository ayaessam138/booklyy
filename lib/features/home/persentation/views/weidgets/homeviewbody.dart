import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/Bestsellerlistviewitem.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custtomappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class homeviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custtomAppbar(),
            featuredbooklistview(),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Best Seller',
              style: styles.textstyle18,
            ),
            const SizedBox(
              height: 20,
            ),
            Bestsellerlistviewitem()
          ],
        ),
      ),
    );
  }
}
