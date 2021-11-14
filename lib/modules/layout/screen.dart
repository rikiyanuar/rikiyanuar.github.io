import 'package:flutter/material.dart';
import 'package:portofolio/core/components/index.dart';
import 'package:portofolio/modules/home/index.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final homeKey = GlobalKey();
    final profileKey = GlobalKey();
    final projectKey = GlobalKey();
    final contactKey = GlobalKey();

    return Scaffold(
      endDrawer: SideNav(size: size),
      body: SafeArea(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height),
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(children: [
                Jumbotron(key: homeKey),
                Tags(),
                Profile(key: profileKey),
                Portfolio(key: projectKey),
                Contact(key: contactKey),
                Footer(),
              ], crossAxisAlignment: CrossAxisAlignment.start),
            ),
            NavBar(
              keyHome: homeKey,
              keyProfile: profileKey,
              keyPortfolio: projectKey,
              keyContact: contactKey,
            )
          ]),
        ),
      ),
    );
  }

  onTapMenu(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!);
  }
}
