import 'package:flutter/material.dart';
import 'package:portofolio/core/notifier/main_notifier.dart';
import 'package:portofolio/core/utils/kj_di.dart';
import 'package:provider/provider.dart';

import '../index.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainNotifier = Provider.of<MainNotifier>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 24 : 40,
        vertical: isMobile(context) ? 12 : 0,
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white30)),
      ),
      child: Row(children: [
        Logo(),
        Spacer(),
        if (!isMobile(context))
          Row(children: [
            NavItem(onTap: () {}, title: "Home"),
            NavItem(onTap: () {}, title: "Profile"),
            NavItem(onTap: () {}, title: "Portfolio"),
            NavItem(onTap: () {}, title: "Contact"),
            IconButton(
              icon: Icon(Icons.brightness_4_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: "Switch to Light Theme",
            ),
            IconButton(
              icon: Icon(Icons.language),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: "Switch Language",
            ),
          ]),
        if (isMobile(context))
          IconButton(
            icon: Icon(Icons.brightness_4_outlined),
            onPressed: () => mainNotifier.toggleMode(),
            tooltip: "Switch to Light Theme",
          ),
        if (isMobile(context))
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: "Switch Language",
          ),
        if (isMobile(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: "Open Menu",
          )
      ]),
    );
  }
}
