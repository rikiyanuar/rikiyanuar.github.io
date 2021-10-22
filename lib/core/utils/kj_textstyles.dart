import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Naming rules
/// `Size` `Color` `Weight`.
/// example: `smallWhiteBold`
///
/// Set default font family with `Montserrat`
class KjText {
  /// Small Text
  static final smallBlackNormal = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final smallBlackBold = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  /// Medium Text
  static final mediumBlackNormal = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final mediumBlackBold = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final mediumYellowNormal = GoogleFonts.montserrat(
    fontSize: 16,
    color: Colors.yellow,
    fontWeight: FontWeight.w400,
  );

  /// Large Text
  static final largeBlackNormal = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static final largeBlackBold = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  /// Extra Large Text
  static final extraLargeBlackNormal = GoogleFonts.montserrat(
    letterSpacing: -0.5,
    fontSize: 34,
    fontWeight: FontWeight.w400,
  );
  static final extraLargeBlackBold = GoogleFonts.montserrat(
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
}
