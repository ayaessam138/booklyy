import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';

class bookdetailslistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: custombookinmageitem(),
            );
          }),
    );
  }
}
