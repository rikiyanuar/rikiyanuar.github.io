import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(children: [
        Text(
          "Contact Me",
          style: KjText.largeBold.copyWith(color: Colors.yellow),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Wrap(children: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.whatsapp),
            iconSize: 36,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.envelope),
            iconSize: 36,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.linkedinIn),
            iconSize: 36,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.fileDownload),
            iconSize: 36,
          ),
        ], runSpacing: 20, spacing: 20, runAlignment: WrapAlignment.center)
      ]),
    );
  }
}
