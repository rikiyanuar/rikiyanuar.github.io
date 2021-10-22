import 'package:flutter/material.dart';
import 'package:portofolio/core/notifier/main_notifier.dart';
import 'package:portofolio/core/utils/kj_textstyles.dart';
import 'package:provider/provider.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainNotifier = Provider.of<MainNotifier>(context);
    final textColor = mainNotifier.isDark ? Colors.white : Colors.black;
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "<",
          style: KjText.largeBlackNormal.copyWith(color: Colors.yellow),
        ),
        TextSpan(
          text: "Riki Yanuar ",
          style: KjText.logo.copyWith(color: textColor),
        ),
        TextSpan(
          text: "/>",
          style: KjText.largeBlackNormal.copyWith(color: Colors.yellow),
        ),
      ]),
    );
  }
}
