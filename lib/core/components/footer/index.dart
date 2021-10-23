import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final year = KjFunc.dateFromDateTime(DateTime.now(), "yyyy");
    return Container(
      color: Colors.black.withOpacity(.7),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 24 : 40,
        vertical: isMobile(context) ? 24 : 30,
      ),
      child: Wrap(
        children: [
          Text("© $year Riki Yanuar", style: KjText.mediumNormal),
          Text("© $year Riki Yanuar", style: KjText.mediumNormal),
        ],
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
      ),
    );
  }
}
