import 'package:flutter/material.dart';

import '../index.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .85,
      color: Colors.grey.shade900,
      height: double.infinity,
      child: SafeArea(
        child: Column(children: [
          Container(
            color: Colors.white10,
            width: double.infinity,
            padding: EdgeInsets.all(14),
            alignment: Alignment.center,
            child: Row(children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: null,
                disabledColor: Colors.transparent,
              ),
              Expanded(child: Center(child: Logo())),
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.white.withOpacity(.8),
                onPressed: () => Navigator.pop(context),
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                NavItem(
                  onTap: () {},
                  title: "Home",
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
                ),
                NavItem(
                  onTap: () {},
                  title: "Profile",
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
                ),
                NavItem(
                  onTap: () {},
                  title: "Portfolio",
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
                ),
                NavItem(
                  onTap: () {},
                  title: "Contact",
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
