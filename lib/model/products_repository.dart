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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      // Cats (11 images: cat1..cat10 plus favicon.png mapped as id 10)
      Product(
          category: Category.cats,
          id: 0,
          isFeatured: true,
          name: 'Cat 1',
          price: 10),
      Product(
          category: Category.cats,
          id: 1,
          isFeatured: true,
          name: 'Cat 2',
          price: 10),
      Product(
          category: Category.cats,
          id: 2,
          isFeatured: false,
          name: 'Cat 3',
          price: 10),
      Product(
          category: Category.cats,
          id: 3,
          isFeatured: true,
          name: 'Cat 4',
          price: 10),
      Product(
          category: Category.cats,
          id: 4,
          isFeatured: false,
          name: 'Cat 5',
          price: 10),
      Product(
          category: Category.cats,
          id: 5,
          isFeatured: false,
          name: 'Cat 6',
          price: 10),
      Product(
          category: Category.cats,
          id: 6,
          isFeatured: false,
          name: 'Cat 7',
          price: 10),
      Product(
          category: Category.cats,
          id: 7,
          isFeatured: true,
          name: 'Cat 8',
          price: 10),
      Product(
          category: Category.cats,
          id: 8,
          isFeatured: true,
          name: 'Cat 9',
          price: 10),
      Product(
          category: Category.cats,
          id: 9,
          isFeatured: false,
          name: 'Cat 10',
          price: 10),
      Product(
          category: Category.cats,
          id: 10,
          isFeatured: false,
          name: 'Cat favicon',
          price: 5),

      // Dogs (5 images: dog1..dog5)
      Product(
          category: Category.dogs,
          id: 11,
          isFeatured: false,
          name: 'Dog 1',
          price: 12),
      Product(
          category: Category.dogs,
          id: 12,
          isFeatured: false,
          name: 'Dog 2',
          price: 12),
      Product(
          category: Category.dogs,
          id: 13,
          isFeatured: false,
          name: 'Dog 3',
          price: 12),
      Product(
          category: Category.dogs,
          id: 14,
          isFeatured: false,
          name: 'Dog 4',
          price: 12),
      Product(
          category: Category.dogs,
          id: 15,
          isFeatured: true,
          name: 'Dog 5',
          price: 12),

      // Labubu (23 images). We'll assign ids 16..38.
      Product(
          category: Category.labubu,
          id: 16,
          isFeatured: true,
          name: 'Labubu 1',
          price: 15),
      Product(
          category: Category.labubu,
          id: 17,
          isFeatured: false,
          name: 'Labubu 2',
          price: 15),
      Product(
          category: Category.labubu,
          id: 18,
          isFeatured: false,
          name: 'Labubu 3',
          price: 15),
      Product(
          category: Category.labubu,
          id: 19,
          isFeatured: false,
          name: 'Labubu 4',
          price: 15),
      Product(
          category: Category.labubu,
          id: 20,
          isFeatured: true,
          name: 'Labubu 5',
          price: 15),
      Product(
          category: Category.labubu,
          id: 21,
          isFeatured: true,
          name: 'Labubu 6',
          price: 15),
      Product(
          category: Category.labubu,
          id: 22,
          isFeatured: true,
          name: 'Labubu 7',
          price: 15),
      Product(
          category: Category.labubu,
          id: 23,
          isFeatured: false,
          name: 'Labubu 8',
          price: 15),
      Product(
          category: Category.labubu,
          id: 24,
          isFeatured: true,
          name: 'Labubu 9',
          price: 15),
      Product(
          category: Category.labubu,
          id: 25,
          isFeatured: false,
          name: 'Labubu 10',
          price: 15),
      Product(
          category: Category.labubu,
          id: 26,
          isFeatured: false,
          name: 'Labubu 11',
          price: 15),
      Product(
          category: Category.labubu,
          id: 27,
          isFeatured: false,
          name: 'Labubu 12',
          price: 15),
      Product(
          category: Category.labubu,
          id: 28,
          isFeatured: false,
          name: 'Labubu 13',
          price: 15),
      Product(
          category: Category.labubu,
          id: 29,
          isFeatured: false,
          name: 'Labubu 14',
          price: 15),
      Product(
          category: Category.labubu,
          id: 30,
          isFeatured: false,
          name: 'Labubu 15',
          price: 15),
      Product(
          category: Category.labubu,
          id: 31,
          isFeatured: false,
          name: 'Labubu 16',
          price: 15),
      Product(
          category: Category.labubu,
          id: 32,
          isFeatured: false,
          name: 'Labubu 17',
          price: 15),
      Product(
          category: Category.labubu,
          id: 33,
          isFeatured: false,
          name: 'Labubu 18',
          price: 15),
      Product(
          category: Category.labubu,
          id: 34,
          isFeatured: false,
          name: 'Flyingcats',
          price: 8),
      Product(
          category: Category.labubu,
          id: 35,
          isFeatured: false,
          name: 'IDK',
          price: 8),
      Product(
          category: Category.labubu,
          id: 36,
          isFeatured: false,
          name: 'Lion',
          price: 8),
      Product(
          category: Category.labubu,
          id: 37,
          isFeatured: false,
          name: 'Monkey',
          price: 8),
      Product(
          category: Category.labubu,
          id: 38,
          isFeatured: false,
          name: 'Owl',
          price: 8),
    ];

    if (category == Category.all) return allProducts;
    return allProducts.where((p) => p.category == category).toList();
  }
}
