// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:scoped_model/scoped_model.dart';
import 'model/app_state_model.dart';

const double _kDateTimePickerHeight = 216;

class ShoppingCartTab extends StatefulWidget {
  @override
  _ShoppingCartTabState createState() => _ShoppingCartTabState();
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  String name;
  String email;
  String location;
  String pin;
  DateTime dateTime = DateTime.now();

  Widget _buildNameField() => CupertinoTextField(
        prefix: const Icon(
          CupertinoIcons.person_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        textCapitalization: TextCapitalization.words,
        autocorrect: false,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'Name',
        onChanged: (newName) {
          setState(() {
            name = newName;
          });
        },
      );

  Widget _buildEmailField() => const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.mail_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'Email',
      );

  Widget _buildLocationField() => const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.location_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        textCapitalization: TextCapitalization.words,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'Location',
      );

  Widget _buildDateAndTimePicker(BuildContext context) => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.clock,
                    color: CupertinoColors.lightBackgroundGray,
                    size: 28,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Delivery time',
                    style: TextStyle(
                      color: Color(0xFFC2C2C2),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Text(
                DateFormat.yMMMd().add_jm().format(dateTime),
                style: const TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ],
          ),
          Container(
            height: _kDateTimePickerHeight,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              initialDateTime: dateTime,
              onDateTimeChanged: (newDateTime) {
                setState(() => dateTime = newDateTime);
              },
            ),
          ),
        ],
      );

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
          AppStateModel model) =>
      SliverChildBuilderDelegate(
        (context, index) {
          switch (index) {
            case 0:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildNameField(),
              );
            case 1:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildEmailField(),
              );
            case 2:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildLocationField(),
              );
            case 3:
              return Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                child: _buildDateAndTimePicker(context),
              );
            default:
              // Do nothing. For now.
          }
          return null;
        },
      );

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: ScopedModelDescendant<AppStateModel>(
          builder: (context, child, model) => CustomScrollView(
                slivers: <Widget>[
                  CupertinoSliverNavigationBar(
                    largeTitle: const Text('Shopping Cart'),
                  ),
                  SliverPadding(
                    // Top media padding consumed by
                    // CupertinoSliverNavigationBar. Left/Right media padding
                    // consumed by Tab1RowItem.
                    padding: MediaQuery.of(context)
                        .removePadding(
                          removeTop: true,
                          removeLeft: true,
                          removeRight: true,
                        )
                        .padding,
                    sliver: SliverList(
                      delegate: _buildSliverChildBuilderDelegate(model),
                    ),
                  )
                ],
              ),
        ),
      );
}
