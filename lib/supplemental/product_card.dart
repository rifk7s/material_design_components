// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {this.imageAspectRatio = 33 / 49, required this.product, Key? key})
      : assert(imageAspectRatio > 0),
        super(key: key);

  final double imageAspectRatio;
  final Product product;

  static const kTextBoxHeight = 65.0;

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    final ThemeData theme = Theme.of(context);

    final imageWidget = Image.asset(
      product.assetPath,
      fit: BoxFit.cover,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: imageAspectRatio,
          child: imageWidget,
        ),
        Builder(builder: (context) {
          final TextStyle nameStyle =
              (theme.textTheme.labelLarge ?? const TextStyle())
                  .copyWith(color: Colors.black);
          final TextStyle priceStyle =
              (theme.textTheme.bodySmall ?? const TextStyle())
                  .copyWith(color: Colors.black);
          final double scale = MediaQuery.of(context).textScaler.scale(1.0);
          const double horizontalPadding = 16.0;
          final double maxWidth = 121.0 - horizontalPadding;

          final TextPainter nameTp = TextPainter(
            text: TextSpan(text: product.name, style: nameStyle),
            textDirection: Directionality.of(context),
            maxLines: 10,
          )..layout(maxWidth: maxWidth);

          final TextPainter priceTp = TextPainter(
            text: TextSpan(
                text: formatter.format(product.price), style: priceStyle),
            textDirection: Directionality.of(context),
          )..layout(maxWidth: maxWidth);

          final double nameHeight = nameTp.size.height;
          final double priceHeight = priceTp.size.height;
          final double contentHeight = nameHeight + 4.0 + priceHeight;

          final double baseHeight = kTextBoxHeight * scale;
          final double maxHeight = baseHeight * 3;
          final double desiredHeight = contentHeight + 16.0;
          final double finalHeight = desiredHeight.clamp(baseHeight, maxHeight);

          return Container(
            width: 121.0,
            height: finalHeight,
            padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  product.name,
                  style: nameStyle,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const SizedBox(height: 4.0),
                Text(
                  formatter.format(product.price),
                  style: priceStyle,
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
