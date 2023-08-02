import 'package:booklyy/core/utilts/asset.dart';
import 'package:booklyy/features/splash/persentation/view/widgets/slidingsplashtext.dart';
import 'package:flutter/material.dart';

class splasscreenbody extends StatefulWidget {
  splasscreenbody({Key? key}) : super(key: key);

  @override
  State<splasscreenbody> createState() => _splasscreenbodyState();
}

class _splasscreenbodyState extends State<splasscreenbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(minutes: 1));

    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assetdata.logo),
          slidingsplashtext(slidinganimation: slidinganimation)
        ],
      ),
    );
  }
}
