import 'package:booklyy/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class custoumerrorweidget extends StatelessWidget {
  final String Errormessage;
  custoumerrorweidget({required this.Errormessage});
  @override
  Widget build(BuildContext context) {
    return Text(
      Errormessage,
      style: styles.textstyle18,
    );
  }
}
