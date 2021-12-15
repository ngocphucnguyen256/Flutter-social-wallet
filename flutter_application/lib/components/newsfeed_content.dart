import 'package:flutter/material.dart';
import 'package:flutter_application/components/balance.dart';
import 'package:flutter_application/components/download.dart';
import 'package:flutter_application/components/help.dart';
import 'package:flutter_application/components/last_pay.dart';
import 'package:flutter_application/components/gradient_button.dart';
import 'package:flutter_application/components/post.dart';
import 'package:flutter_application/components/send.dart';
import 'package:flutter_application/helper/responsive.dart';

class NewsfeedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 18.0),
      child: Container(
          child: Scrollbar(
        isAlwaysShown: false,
        thickness: 0.1,
        hoverThickness: 0.1,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Post(),
            ]);
          },
          itemCount: 1,
        ),
      )),
    );
  }
}
