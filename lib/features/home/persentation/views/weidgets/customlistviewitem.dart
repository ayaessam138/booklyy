import 'package:booklyy/core/utilts/asset.dart';
import 'package:flutter/material.dart';

class custtoumlistviewitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage(assetdata.test), fit: BoxFit.fill)),
      ),
    );
  }
}
