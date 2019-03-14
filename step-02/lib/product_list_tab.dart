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
import 'package:scoped_model/scoped_model.dart';
import 'model/app_state_model.dart';
import 'product_row_item.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: ScopedModelDescendant<AppStateModel>(
          builder: (context, child, model) {
            final products = model.getProducts();
            return CustomScrollView(
              semanticChildCount: products.length,
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: const Text('Cupertino Store'),
                ),
                SliverPadding(
                  // Top media padding consumed by CupertinoSliverNavigationBar.
                  // Left/Right media padding consumed by Tab1RowItem.
                  padding: MediaQuery.of(context)
                      .removePadding(
                        removeTop: true,
                        removeLeft: true,
                        removeRight: true,
                      )
                      .padding,
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < products.length) {
                          return ProductRowItem(
                            index: index,
                            product: products[index],
                            lastItem: index == products.length - 1,
                          );
                        }

                        return null;
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      );
}
