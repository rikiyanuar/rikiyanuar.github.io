import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_textstyles.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "<",
          style: KjText.largeNormal.copyWith(color: Colors.yellow),
        ),
        TextSpan(
          text: "Riki Yanuar ",
          style: KjText.logo.copyWith(
            color: Colors.white.withOpacity(.8),
          ),
        ),
        TextSpan(
          text: "/>",
          style: KjText.largeNormal.copyWith(color: Colors.yellow),
        ),
      ]),
    );
  }
}
