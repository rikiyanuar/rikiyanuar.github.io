import 'package:flutter/material.dart';
import 'package:portofolio/core/notifier/main_notifier.dart';
import 'package:portofolio/modules/layout/screen.dart';
import 'package:provider/provider.dart';

class KjApp extends StatelessWidget {
  const KjApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainNotifier = Provider.of<MainNotifier>(context);
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(scrollbars: false),
      title: 'Riki Yanuar',
      themeMode: mainNotifier.themeMode,
      theme: ThemeData(
        colorScheme: ThemeData.light().colorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        colorScheme: ThemeData.dark().colorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
      // navigatorKey: KjNavigator.navK,
    );
  }
}
