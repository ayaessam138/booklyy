import 'package:booklyy/core/utilts/app_routes.dart';
import 'package:booklyy/core/utilts/asset.dart';
import 'package:booklyy/core/utilts/styles.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/bookrating.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  Bestsellerlistviewitem({required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(approutes.kbookdetalisview);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            custombookinmageitem(
                imageurl: bookmodel.volumeInfo.imageLinks.thumbnail),
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         color: Colors.red,
            //         image: const DecorationImage(
            //             image: AssetImage(assetdata.test), fit: BoxFit.fill)),
            //   ),
            // ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookmodel.volumeInfo.title!,
                        style: styles.textstyle20,
                        maxLines: 2,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookmodel.volumeInfo.authors![0],
                    style: styles.textstyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free ',
                        style: styles.textstyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      bookrating(
                        rating: bookmodel.volumeInfo.maturityRating!,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
