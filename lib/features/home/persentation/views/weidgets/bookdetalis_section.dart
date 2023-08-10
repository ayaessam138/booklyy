import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookaction.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookrating.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';

class BookdetalisSection extends StatelessWidget {
  final Bookmodel bookmodel;

  const BookdetalisSection({super.key, required this.bookmodel});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: custombookinmageitem(
              imageurl: bookmodel.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 47,
        ),
        Text(
          bookmodel.volumeInfo.title!,
          style: styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookmodel.volumeInfo.authors?[0] ?? '',
            style: styles.textstyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        bookrating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: bookmodel.volumeInfo.maturityRating ?? ''),
        const SizedBox(
          height: 37,
        ),
        bookaction(
          bookmodel: bookmodel,
        ),
      ],
    );
  }
}
