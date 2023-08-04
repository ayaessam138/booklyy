import 'package:booklyy/features/home/persentation/views/weidgets/custombutton.dart';
import 'package:flutter/material.dart';

class bookaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: custombutton(
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              text: '19.99',
            ),
          ),
          Expanded(
            child: custombutton(
              fontsize: 16,
              backgroundcolor: Color.fromARGB(255, 243, 89, 6),
              textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              text: 'Free Preview',
            ),
          )
        ],
      ),
    );
  }
}
