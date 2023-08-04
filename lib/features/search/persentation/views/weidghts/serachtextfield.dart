import 'package:flutter/material.dart';

class serarchtextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildborder(),
          focusedBorder: buildborder(),
          hintText: 'Srearch',
          suffixIcon: Opacity(
            opacity: .8,
            child: IconButton(
              icon: Icon(Icons.search),
              iconSize: 22,
              onPressed: () {},
            ),
          )),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
