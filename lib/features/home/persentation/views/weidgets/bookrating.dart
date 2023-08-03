import 'package:booklyy/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  bookrating({this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
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
        Text('4.8', style: styles.textstyle16),
        SizedBox(
          height: 5,
        ),
        Opacity(
            opacity: .5,
            child: Text('(245)',
                style:
                    styles.textstyle14.copyWith(fontWeight: FontWeight.w600)))
      ],
    );
  }
}
