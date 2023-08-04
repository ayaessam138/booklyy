import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookaction.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailsappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookdetailslistview.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookrating.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombutton.dart';
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
          ),
          const SizedBox(
            height: 16,
          ),
          bookrating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          bookaction(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You Can Also Like this',
                style:
                    styles.textstyle14.copyWith(fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 16,
          ),
          bookdetailslistview(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
