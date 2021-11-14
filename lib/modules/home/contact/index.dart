import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/core/utils/kj_di.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KjColors.black2,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(children: [
        Text(
          "Contact Me",
          style: KjText.largeBold.copyWith(color: KjColors.yellow1),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Material(
          color: Colors.transparent,
          child: Wrap(children: [
            IconButton(
              onPressed: () => onClick(KjConst.whatsappURL),
              icon: FaIcon(FontAwesomeIcons.whatsapp),
              iconSize: isMobile(context) ? 26 : 36,
              color: KjColors.white,
            ),
            IconButton(
              onPressed: () => onClick(KjConst.emailURL),
              icon: FaIcon(FontAwesomeIcons.envelope),
              iconSize: isMobile(context) ? 26 : 36,
              color: KjColors.white,
            ),
            IconButton(
              onPressed: () => onClick(KjConst.linkedinURL),
              icon: FaIcon(FontAwesomeIcons.linkedinIn),
              iconSize: isMobile(context) ? 26 : 36,
              color: KjColors.white,
            ),
            IconButton(
              onPressed: () => onClick(KjConst.resumeURL),
              icon: FaIcon(FontAwesomeIcons.fileDownload),
              iconSize: isMobile(context) ? 26 : 36,
              color: KjColors.white,
            ),
          ], runSpacing: 20, spacing: 20, runAlignment: WrapAlignment.center),
        )
      ]),
    );
  }

  onClick(String url) async {
    if (await canLaunch(url)) await launch(url);
  }
}
