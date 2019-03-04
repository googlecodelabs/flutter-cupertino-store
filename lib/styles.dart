// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle headlineText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subheadText = TextStyle(
    color: Color.fromRGBO(240, 240, 240, 1),
    fontSize: 30,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle minorText = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle headlineName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headlineDescription = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const Color appBackground = Color(0xffd0d0d0);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

  static const Color frostedBackground = Color(0xccf8f8f8);

  static const Color closeButtonUnpressed = Color(0xff101010);

  static const Color closeButtonPressed = Color(0xff808080);

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);

  static const IconData uncheckedIcon = IconData(
    0xf372,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const IconData checkedIcon = IconData(
    0xf373,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const Color transparentColor = Color(0x00000000);

  static const Color shadowColor = Color(0xa0000000);

  static const LinearGradient shadowGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [transparentColor, shadowColor],
  );

  static const Color settingsMediumGray = Color(0xffc7c7c7);

  static const Color settingsItemPressed = Color(0xffd9d9d9);

  static const Color settingsLineation = Color(0xffbcbbc1);

  static const Color settingsBackground = Color(0xffefeff4);

  static const Color settingsGroupSubtitle = Color(0xff777777);

  static const Color iconBlue = Color(0xff0000ff);

  static const Color iconGold = Color(0xffdba800);

  static const IconData preferenceIcon = IconData(
    0xf443,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const IconData calorieIcon = IconData(
    0xf3bb,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const IconData checkIcon = IconData(
    0xf383,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );
}
