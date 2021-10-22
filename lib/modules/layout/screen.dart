import 'package:flutter/material.dart';
import 'package:portofolio/core/components/index.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: SideNav(size: size),
      body: SafeArea(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height),
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(children: [
                Jumbotron(),
                Tags(),
              ], crossAxisAlignment: CrossAxisAlignment.start),
            ),
            NavBar()
          ]),
        ),
      ),
    );
  }
}
