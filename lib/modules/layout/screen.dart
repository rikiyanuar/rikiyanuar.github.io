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
          child: Column(children: [
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Jumbotron(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 120),
                    child: Row(children: [
                      Column(children: []),
                    ]),
                  ),
                ]),
              ),
            ),
          ], crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}
