import 'package:booklyy/core/utilts/asset.dart';
import 'package:flutter/material.dart';

class splasscreenbody extends StatelessWidget {
  const splasscreenbody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assetdata.logo),
          Text(
            'Read Books for free',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
