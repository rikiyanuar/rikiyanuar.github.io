import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftSideAlign = isMobile(context) ? TextAlign.center : TextAlign.left;
    final rightSideAlign =
        isMobile(context) ? TextAlign.center : TextAlign.right;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Wrap(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Education",
                style: KjText.largeBold.copyWith(color: Colors.yellow),
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 8),
              Text(
                "Universitas Nusantara PGRI Kediri",
                style: KjText.mediumNormal,
                textAlign: leftSideAlign,
              ),
              Text(
                "Information System",
                style: KjText.mediumLight,
                textAlign: leftSideAlign,
              ),
              Text(
                "2011 - 2016",
                style: KjText.mediumLight.copyWith(color: Colors.yellow),
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 18),
              Text(
                "Skills",
                style: KjText.largeBold.copyWith(color: Colors.yellow),
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 8),
              Text(
                "Flutter",
                style: KjText.mediumNormal,
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 4),
              SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.yellow.withOpacity(.3),
                  color: Colors.yellow,
                  value: 0.9,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Vue.js",
                style: KjText.mediumNormal,
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 4),
              SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.yellow.withOpacity(.3),
                  color: Colors.yellow,
                  value: 0.65,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "NodeJS",
                style: KjText.mediumNormal,
                textAlign: leftSideAlign,
              ),
              SizedBox(height: 4),
              SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.yellow.withOpacity(.3),
                  color: Colors.yellow,
                  value: 0.65,
                ),
              ),
            ],
            crossAxisAlignment: !isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Experience",
                style: KjText.largeBold.copyWith(color: Colors.yellow),
                textAlign: rightSideAlign,
              ),
              SizedBox(height: 8),
              Text(
                "PT Anekapay Tekonologi Indonesia",
                style: KjText.mediumNormal,
                textAlign: rightSideAlign,
              ),
              Text(
                "Frontend Developer",
                style: KjText.mediumLight,
                textAlign: rightSideAlign,
              ),
              Text(
                "Aug 2018 - NOW",
                style: KjText.mediumLight.copyWith(color: Colors.yellow),
                textAlign: rightSideAlign,
              ),
              SizedBox(height: 6),
              Text(
                "KIRIM.EMAIL",
                style: KjText.mediumNormal,
                textAlign: rightSideAlign,
              ),
              Text(
                "Developer",
                style: KjText.mediumLight,
                textAlign: rightSideAlign,
              ),
              Text(
                "Jan 2018 - Aug 2018",
                style: KjText.mediumLight.copyWith(color: Colors.yellow),
                textAlign: rightSideAlign,
              ),
              SizedBox(height: 6),
              Text(
                "Multec.TC",
                style: KjText.mediumNormal,
                textAlign: rightSideAlign,
              ),
              Text(
                "Backend Developer",
                style: KjText.mediumLight,
                textAlign: rightSideAlign,
              ),
              Text(
                "Apr 2017 - Jan 2018",
                style: KjText.mediumLight.copyWith(color: Colors.yellow),
                textAlign: rightSideAlign,
              ),
            ],
            crossAxisAlignment: !isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.end,
          ),
        ),
      ], alignment: WrapAlignment.center),
    );
  }
}
