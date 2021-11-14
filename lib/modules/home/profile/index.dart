import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final boxKey = GlobalKey();
  double? sizeBox;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => getSize());
  }

  getSize() {
    final context = boxKey.currentContext;
    if (!mounted) return;
    setState(() {
      sizeBox = context?.size!.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    final leftSideAlign = isMobile(context) ? TextAlign.center : TextAlign.left;
    final rightSideAlign =
        isMobile(context) ? TextAlign.center : TextAlign.right;
    return Stack(children: [
      Image.asset(
        KjConst.imgEducation,
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: sizeBox,
      ),
      Container(
        key: boxKey,
        color: Colors.black.withOpacity(.7),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: Wrap(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    "Education",
                    style: KjText.largeBold.copyWith(color: KjColors.yellow1),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Bachelor of Computer Science",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Universitas Nusantara PGRI Kediri",
                    style: KjText.mediumLight.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "2011 - 2016",
                    style: TextStyle(color: KjColors.yellow1),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Skills",
                    style: KjText.largeBold.copyWith(color: KjColors.yellow1),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor: KjColors.yellow1.withOpacity(.3),
                      color: KjColors.yellow1,
                      value: 0.99,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Vue.js",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor: KjColors.yellow1.withOpacity(.3),
                      color: KjColors.yellow1,
                      value: 0.7,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Javascript",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor: KjColors.yellow1.withOpacity(.3),
                      color: KjColors.yellow1,
                      value: 0.8,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "MongoDB",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: leftSideAlign,
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor: KjColors.yellow1.withOpacity(.3),
                      color: KjColors.yellow1,
                      value: 0.7,
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
                    style: KjText.largeBold.copyWith(color: KjColors.yellow1),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter Engineer",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "PT Anekapay Tekonologi Indonesia",
                    style: KjText.mediumLight.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Aug 2018 - NOW",
                    style: TextStyle(color: KjColors.yellow1),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Developer",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "KIRIM.EMAIL",
                    style: KjText.mediumLight.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Jan 2018 - Aug 2018",
                    style: TextStyle(color: KjColors.yellow1),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Full Stack Developer",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Multec.TC",
                    style: KjText.mediumLight.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Apr 2017 - Jan 2018",
                    style: TextStyle(color: KjColors.yellow1),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Full Stack Web Developer",
                    style: KjText.mediumNormal.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "DUO Project",
                    style: KjText.mediumLight.copyWith(color: KjColors.white),
                    textAlign: rightSideAlign,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Mar 2016 - Jan 2017",
                    style: TextStyle(color: KjColors.yellow1),
                    textAlign: rightSideAlign,
                  ),
                ],
                crossAxisAlignment: !isDesktop(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.end,
              ),
            ),
          ],
          alignment: WrapAlignment.center,
          crossAxisAlignment: isDesktop(context)
              ? WrapCrossAlignment.start
              : WrapCrossAlignment.center,
          runAlignment: WrapAlignment.start,
        ),
      ),
    ]);
  }
}
