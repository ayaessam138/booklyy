import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utilts/functions/launchurl.dart';

class bookaction extends StatelessWidget {
  final Bookmodel bookmodel;

  const bookaction({super.key, required this.bookmodel});
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
              onpressed: () async {
                launchCustomUr(context, 'bookModel.volumeInfo.previewLink');
              },
              fontsize: 16,
              backgroundcolor: Color.fromARGB(255, 243, 89, 6),
              textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              text: gettext(bookmodel),
            ),
          )
        ],
      ),
    );
  }

  String gettext(Bookmodel bookmodel) {
    if (bookmodel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
