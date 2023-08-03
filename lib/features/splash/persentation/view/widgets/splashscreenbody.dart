import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utilts/app_routes.dart';
import 'package:booklyy/core/utilts/asset.dart';
import 'package:booklyy/features/home/persentation/views/home_view.dart';
import 'package:booklyy/features/splash/persentation/view/widgets/slidingsplashtext.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    initslidingAnimation();
    NavToHome();
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

  void initslidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(minutes: 1));

    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
  }

  void NavToHome() {
    Future.delayed(Duration(seconds: 2), () {
      // Get.to(homwview(),
      //     transition: Transition.fade, duration: ktransationduration);
      GoRouter.of(context).push(approutes.khomeview);
    });
  }
}
