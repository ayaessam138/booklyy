import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailslistview.dart';
import 'package:flutter/material.dart';

class recommededbooksection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can Also Like this',
            style: styles.textstyle14.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        bookdetailslistview(),
      ],
    );
  }
}
