import 'package:booklyy/core/utilts/asset.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class custombookinmageitem extends StatelessWidget {
  custombookinmageitem({required this.imageurl});
  String imageurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageurl,
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        ),
        // child: Container(
        //   height: 100,
        //   width: 100,
        //   decoration: BoxDecoration(
        //       color: Colors.red,
        //       borderRadius: BorderRadius.circular(16),
        //       image: DecorationImage(
        //           image: NetworkImage(imageurl), fit: BoxFit.fill)),
        // ),
      ),
    );
  }
}
