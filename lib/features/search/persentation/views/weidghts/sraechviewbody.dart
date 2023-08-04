import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/search/persentation/views/weidghts/serachtextfield.dart';
import 'package:booklyy/features/search/persentation/views/weidghts/serchlistview.dart';
import 'package:flutter/material.dart';

class sraechviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          serarchtextfield(),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Sreach Result',
            style: styles.textstyle18,
          ),
          Expanded(child: Searchlistview())
        ],
      ),
    );
  }
}
