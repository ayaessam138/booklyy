import 'package:booklyy/features/home/persentation/views/weidgets/Bestsellerlistviewitem.dart';
import 'package:flutter/material.dart';

class Bestsellerlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Bestsellerlistviewitem(),
          );
        });
  }
}
