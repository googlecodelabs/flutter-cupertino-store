// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    @required this.controller,
    @required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(
        // color: Styles.searchBackground,
        border: Border.all(color: CupertinoColors.inactiveGray),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 12,
      ),
      prefix: const Padding(
        padding:  EdgeInsets.only(left: 10),
        child:  Icon(
          CupertinoIcons.search,
          color: Styles.searchIconColor,
        ),
      ),
      controller: controller,
      focusNode: focusNode,
      style: Styles.searchText,
      cursorColor: Styles.searchCursorColor,
      clearButtonMode: OverlayVisibilityMode.always,
    );
  }
}
