import 'package:booklyy/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton(
      {required this.backgroundcolor,
      required this.textcolor,
      this.borderRadius,
      required this.text,
      this.fontsize});
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16)),
          ),
          child: Text(
            text,
            style: styles.textstyle16.copyWith(
                color: textcolor,
                fontWeight: FontWeight.w900,
                fontSize: fontsize),
          )),
    );
  }
}
