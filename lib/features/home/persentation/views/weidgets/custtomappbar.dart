import 'package:booklyy/core/utilts/asset.dart';
import 'package:flutter/material.dart';

class custtomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            assetdata.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              ))
        ],
      ),
    );
  }
}
