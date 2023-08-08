import 'package:booklyy/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  bookrating({
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
        SizedBox(
          height: 6.3,
        ),
        Text(rating, style: styles.textstyle16.copyWith(fontSize: 12)),
        SizedBox(
          height: 5,
        ),
        Opacity(
            opacity: .5,
            child: Text('(0)',
                style:
                    styles.textstyle14.copyWith(fontWeight: FontWeight.w600)))
      ],
    );
  }
}
