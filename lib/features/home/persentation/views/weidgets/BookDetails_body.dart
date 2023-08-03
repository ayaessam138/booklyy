import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailsappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookdetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: custombookinmageitem(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: styles.textstyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
