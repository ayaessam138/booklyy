import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/Bestsellerlistview.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/Bestsellerlistviewitem.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custtomappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class homeviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: custtomAppbar(),
              ),
              featuredbooklistview(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: styles.textstyle18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Bestsellerlistview(),
          ),
        )
      ],
    );
  }
}
