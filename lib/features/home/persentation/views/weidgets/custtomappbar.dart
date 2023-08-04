import 'package:booklyy/core/utilts/app_routes.dart';
import 'package:booklyy/core/utilts/asset.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custtomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Row(
        children: [
          Image.asset(
            assetdata.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(approutes.ksearchview);
              },
              icon: const Icon(
                Icons.search,
                size: 24,
              ))
        ],
      ),
    );
  }
}
