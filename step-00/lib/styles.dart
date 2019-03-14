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

  static const Color appBackground = Color(0xffd0d0d0);
}
