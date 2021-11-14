import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final year = KjFunc.dateFromDateTime(DateTime.now(), "yyyy");
    final textFooter = KjText.smallNormal.copyWith(color: KjColors.white);
    return Container(
      color: KjColors.black1,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 24 : 40,
        vertical: isMobile(context) ? 24 : 30,
      ),
      child: Wrap(
        children: [
          Text("© $year Riki Yanuar", style: textFooter),
          rightSide(textFooter),
        ],
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
      ),
    );
  }

  Widget rightSide(TextStyle textFooter) {
    return Row(children: [
      Text("Made with ", style: textFooter),
      Icon(Icons.favorite, color: KjColors.red1, size: 14),
      Text(" & ", style: textFooter),
      Icon(Icons.coffee_rounded, color: KjColors.yellow2, size: 14),
      Text(" using Flutter", style: textFooter),
    ], mainAxisSize: MainAxisSize.min);
  }
}
