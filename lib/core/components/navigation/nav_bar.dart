import 'package:flutter/material.dart';
import 'package:portofolio/core/notifier/main_notifier.dart';
import 'package:portofolio/core/utils/kj_di.dart';

import '../index.dart';

class NavBar extends StatelessWidget {
  final GlobalKey keyHome, keyProfile, keyPortfolio, keyContact;
  const NavBar({
    Key? key,
    required this.keyHome,
    required this.keyProfile,
    required this.keyPortfolio,
    required this.keyContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mainNotifier = Provider.of<MainNotifier>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 24 : 40,
        vertical: isMobile(context) ? 12 : 0,
      ),
      color: Colors.black.withOpacity(.7),
      child: Row(children: [
        Logo(),
        Spacer(),
        if (!isMobile(context))
          Row(children: [
            NavItem(
              onTap: () => onTapMenu(keyHome),
              title: "Home",
            ),
            NavItem(
              onTap: () => onTapMenu(keyProfile),
              title: "Profile",
            ),
            NavItem(
              onTap: () => onTapMenu(keyPortfolio),
              title: "Portfolio",
            ),
            NavItem(
              onTap: () => onTapMenu(keyContact),
              title: "Contact",
            ),
            // themeButton(mainNotifier),
            // langButton(context),
          ]),
        // if (isMobile(context)) themeButton(mainNotifier),
        // if (isMobile(context)) langButton(context),
        if (isMobile(context))
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white.withOpacity(.8),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: "Open Menu",
          )
      ]),
    );
  }

  IconButton langButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.language),
      color: Colors.white.withOpacity(.8),
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      tooltip: "Switch Language",
    );
  }

  IconButton themeButton(MainNotifier mainNotifier) {
    final mode = mainNotifier.isDark ? "Light" : "Dark";
    return IconButton(
      icon: Icon(mainNotifier.isDark
          ? Icons.brightness_4_outlined
          : Icons.brightness_4),
      color: Colors.white.withOpacity(.8),
      onPressed: () => mainNotifier.toggleMode(),
      tooltip: "Switch to $mode Theme",
    );
  }

  onTapMenu(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!);
  }
}
