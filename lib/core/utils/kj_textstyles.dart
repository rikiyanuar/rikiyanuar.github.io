import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Naming rules
/// `Size` `Color` `Weight`.
/// example: `smallWhiteBold`
///
/// Set default font family with `Montserrat`
class KjText {
  /// Small Text
  static final smallNormal = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final smallBold = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  /// Medium Text
  static final mediumLight = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static final mediumNormal = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final mediumBold = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final mediumYellowNormal = GoogleFonts.montserrat(
    fontSize: 16,
    color: Colors.yellow,
    fontWeight: FontWeight.w400,
  );

  /// Large Text
  static final largeLight = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w100,
  );
  static final largeNormal = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static final largeBold = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  /// Extra Large Text
  static final extraLargeNormal = GoogleFonts.montserrat(
    letterSpacing: -0.5,
    fontSize: 34,
    fontWeight: FontWeight.w400,
  );
  static final extraLargeBold = GoogleFonts.montserrat(
    letterSpacing: -0.5,
    fontSize: 34,
    fontWeight: FontWeight.w600,
  );

  /// Depends on UI

  static final logo = GoogleFonts.kaushanScript(
    letterSpacing: -0.5,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static final menuItem = GoogleFonts.lobsterTwo(
    letterSpacing: -0.5,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static final justLight = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300,
  );
}
