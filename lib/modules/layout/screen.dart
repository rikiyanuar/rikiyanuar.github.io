import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: Container(
          color: Colors.black,
          height: double.infinity,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                    child: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                    child: Text(
                      "Profile",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                    child: Text(
                      "Latest Project",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(children: [
            Navbar(),
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

class Jumbotron extends StatelessWidget {
  const Jumbotron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
      child: Column(children: [
        Text("Hi, I'm Riki Yanuar", style: KjText.extraLargeBlackBold),
        SizedBox(height: 10),
        Text(
          "Professional Flutter Engineer in Kediri, Jawa Timur, Indonesia",
          style: KjText.largeBlackNormal.copyWith(
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Row(children: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.yellow),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text("Contact Me", style: KjText.mediumYellowNormal),
            ),
          ),
          SizedBox(width: 24),
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text(
                "See My Resume",
                style: KjText.mediumBlackNormal.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ], mainAxisAlignment: MainAxisAlignment.center),
      ]),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 24 : 40,
        vertical: isMobile(context) ? 12 : 0,
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white30)),
      ),
      child: Row(children: [
        Text("Riki Yanuar", style: KjText.logo),
        Spacer(),
        if (!isMobile(context))
          Row(children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                child: Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                child: Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                child: Text(
                  "Latest Project",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
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
            onPressed: () => Scaffold.of(context).openEndDrawer(),
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
