import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';

import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailsappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailslistview.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetalis_section.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/recommendedbooksection.dart';

import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  final Bookmodel bookmodel;

  const BookDetailsBody({super.key, required this.bookmodel});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookdetailsAppbar(),
                BookdetalisSection(
                  bookmodel: bookmodel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                recommededbooksection(),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
