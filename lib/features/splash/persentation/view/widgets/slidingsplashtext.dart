import 'package:flutter/material.dart';

class slidingsplashtext extends StatelessWidget {
  const slidingsplashtext({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinganimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidinganimation,
            child: Text(
              'Read Books for free',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
