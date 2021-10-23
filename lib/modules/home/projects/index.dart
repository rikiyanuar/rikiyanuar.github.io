import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.3),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(children: [
        Text(
          "Recent Apps",
          style: KjText.largeBold.copyWith(color: Colors.yellow),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Wrap(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(96),
            child: Text(
              "Kiosaneka",
              style: KjText.largeNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(96),
            child: Text(
              "Anekapay",
              style: KjText.largeNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(96),
            child: Text(
              "NIZU",
              style: KjText.largeNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(96),
            child: Text(
              "Even Kita",
              style: KjText.largeNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(96),
            child: Text(
              "Online Registration\nCourse",
              style: KjText.largeNormal,
              textAlign: TextAlign.center,
            ),
          ),
        ], runSpacing: 20, spacing: 20)
      ]),
    );
  }
}
