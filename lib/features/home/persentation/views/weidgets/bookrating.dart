import 'package:booklyy/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
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
        Text('(245)', style: styles.textstyle14)
      ],
    );
  }
}
