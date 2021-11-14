import 'package:flutter/material.dart';

import 'kj_di.dart';

/// Naming rules
/// `Size` `Color` `Weight`.
/// example: `smallWhiteBold`
///
/// Set default font family with `Montserrat`
class KjText {
  static const fontMontserrat = "Montserrat";
  static const fontKaushan = "Kaushan";

  /// Small Text
  static final smallNormal = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final smallBold = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  /// Medium Text
  static final mediumLight = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 16,
    fontWeight: FontWeight.w200,
  );
  static final mediumNormal = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final mediumBold = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final mediumYellowNormal = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 16,
    color: KjColors.yellow1,
    fontWeight: FontWeight.w400,
  );

  /// Large Text
  static final largeLight = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 24,
    fontWeight: FontWeight.w100,
  );
  static final largeNormal = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static final largeBold = TextStyle(
    fontFamily: fontMontserrat,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  /// Extra Large Text
  static final extraLargeNormal = TextStyle(
    fontFamily: fontMontserrat,
    letterSpacing: -0.5,
    fontSize: 34,
    fontWeight: FontWeight.w400,
  );
  static final extraLargeBold = TextStyle(
    fontFamily: fontMontserrat,
    letterSpacing: -0.5,
    fontSize: 34,
    fontWeight: FontWeight.w600,
  );

  /// Depends on UI

  static final logo = TextStyle(
    fontFamily: fontKaushan,
    letterSpacing: -0.5,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static final justLight = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w300,
  );

  static final justNormal = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w400,
  );
}
