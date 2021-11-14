import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        children: [
          Container(
            color: KjColors.yellow1,
            width: isDesktop(context) ? size.width / 3 : size.width,
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: isDesktop(context) ? 0 : 20,
            ),
            child: Column(children: [
              FaIcon(
                FontAwesomeIcons.userTie,
                size: 96,
                color: Colors.black.withOpacity(.7),
              ),
              SizedBox(height: 30),
              Text("Professional", style: KjText.largeBold),
              SizedBox(height: 10),
              Text(
                "Innovation is the heart and soul of Lithios.\nTechnology is fast moving and ever-changing.\nWe strive to search for the best solution.",
                style: KjText.justNormal,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          Container(
            color: KjColors.yellow1.withOpacity(.9),
            width: isDesktop(context) ? size.width / 3 : size.width,
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: isDesktop(context) ? 0 : 20,
            ),
            child: Column(children: [
              FaIcon(
                FontAwesomeIcons.lightbulb,
                size: 96,
                color: Colors.black.withOpacity(.7),
              ),
              SizedBox(height: 30),
              Text("Creative", style: KjText.largeBold),
              SizedBox(height: 10),
              Text(
                "Innovation is the heart and soul of Lithios.\nTechnology is fast moving and ever-changing.\nWe strive to search for the best solution.",
                style: KjText.justNormal,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          Container(
            color: KjColors.yellow1.withOpacity(.8),
            width: isDesktop(context) ? size.width / 3 : size.width,
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: isDesktop(context) ? 0 : 20,
            ),
            child: Column(children: [
              FaIcon(
                FontAwesomeIcons.syncAlt,
                size: 96,
                color: Colors.black.withOpacity(.7),
              ),
              SizedBox(height: 30),
              Text("Up-To-Date", style: KjText.largeBold),
              SizedBox(height: 10),
              Text(
                "Innovation is the heart and soul of Lithios.\nTechnology is fast moving and ever-changing.\nWe strive to search for the best solution.",
                style: KjText.justNormal,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ],
        // runAlignment: WrapAlignment.center,
        // alignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.center,
        // spacing: 20,
        // runSpacing: 30,
      ),
    );
  }
}
