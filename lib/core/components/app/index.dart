import 'package:flutter/material.dart';
import 'package:portofolio/modules/layout/screen.dart';

class KjApp extends StatelessWidget {
  const KjApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ThemeData.dark().colorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
      // navigatorKey: KjNavigator.navK,
    );
  }
}
