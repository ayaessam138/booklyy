import 'package:booklyy/features/home/persentation/views/weidgets/custtomappbar.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class homeviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [custtomAppbar(), featuredbooklistview()],
      ),
    );
  }
}
