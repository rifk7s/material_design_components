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

enum Category {
  all,
  cats,
  dogs,
  labubu,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;

  /// Optional explicit overrides for product id -> asset path.
  /// Use this to map specific product ids to filenames that don't follow
  /// the deterministic naming pattern (for example `labubbu9.jpg`).
  static const Map<int, String> assetOverrides = {
    // cats: favicon (maps id 10 -> assets/cats/favicon.png)
    10: 'assets/cats/favicon.png',

    // dogs: force ids 11..15 -> dog1..dog5
    11: 'assets/dogs/dog1.jpg',
    12: 'assets/dogs/dog2.jpg',
    13: 'assets/dogs/dog3.jpg',
    14: 'assets/dogs/dog4.jpg',
    15: 'assets/dogs/dog5.jpg',

    // labubu: explicit mapping for all 23 labubu assets (ids 16-38)
    16: 'assets/labubu/labubu1.jpg',
    17: 'assets/labubu/labubu2.jpg',
    18: 'assets/labubu/labubu3.jpg',
    19: 'assets/labubu/labubu4.jpg',
    20: 'assets/labubu/labubu5.jpg',
    21: 'assets/labubu/labubu6.jpg',
    22: 'assets/labubu/labubu7.jpg',
    23: 'assets/labubu/labubu8.jpg',
    24: 'assets/labubu/labubbu9.jpg', // Note: special typo filename
    25: 'assets/labubu/labubu10.jpg',
    26: 'assets/labubu/labubu11.jpg',
    27: 'assets/labubu/labubu12.jpg',
    28: 'assets/labubu/labubu13.jpg',
    29: 'assets/labubu/labubu14.jpg',
    30: 'assets/labubu/labubu15.jpg',
    31: 'assets/labubu/labubu16.jpg',
    32: 'assets/labubu/labubu17.jpg',
    33: 'assets/labubu/labubu18.jpg',
    34: 'assets/labubu/flyingcats.jpg',
    35: 'assets/labubu/idk.jpg',
    36: 'assets/labubu/lion.jpg',
    37: 'assets/labubu/monkey.jpg',
    38: 'assets/labubu/owl.jpg',
  };

  /// Returns a local asset path inside `assets/` based on the product category.
  ///
  /// Mapping strategy (deterministic):
  /// - `cats` -> `assets/cats/cat<N>.jpg` (N = (id % 10) + 1)
  /// - `dogs` -> `assets/dogs/dog<N>.jpg` (N = (id % 5) + 1)
  /// - `labubu` -> explicit mapping via assetOverrides (ids 16-38)
  /// Fallback returns `assets/rifky-test.png` when category is `all` or unknown.
  String get assetPath {
    // Check explicit overrides first.
    if (assetOverrides.containsKey(id)) return assetOverrides[id]!;

    switch (category) {
      case Category.cats:
        final n = (id % 10) + 1;
        return 'assets/cats/cat$n.jpg';
      case Category.dogs:
        final n = (id % 5) + 1;
        return 'assets/dogs/dog$n.jpg';
      case Category.labubu:
        // All labubu assets should be handled by explicit overrides
        // This fallback should not be reached for valid labubu products
        return 'assets/rifky-test.png';
      case Category.all:
      default:
        return 'assets/rifky-test.png';
    }
  }

  @override
  String toString() => "$name (id=$id)";
}
