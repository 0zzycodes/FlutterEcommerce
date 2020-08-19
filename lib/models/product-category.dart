import 'package:ecommerce/models/products.dart';

class ProductCategory {
  String categoryImageUrl;
  String category;
  List<Product> products;
  int rating;
  int noOfItemSold;
  int noOfItemInStock;

  ProductCategory({
    this.categoryImageUrl,
    this.category,
    this.products,
    this.rating,
    this.noOfItemSold,
    this.noOfItemInStock,
  });
}

List<Product> products = [
  Product(
    name: "Tripod",
    imageUrl: 'assets/images/',
  ),
  Product(
    name: "Tripod Stand",
    imageUrl: 'assets/images/',
  ),
  Product(
    name: "IphoneX",
    imageUrl: 'assets/images/',
  ),
  Product(
    name: "Bonia Bag",
    imageUrl: 'assets/images/',
  ),
  Product(
    name: "Denim Jeans",
    imageUrl: 'assets/images/',
  ),
];

List<ProductCategory> productCategories = [
  ProductCategory(
    categoryImageUrl: 'assets/images/',
    category: 'Men',
    rating: 5,
    noOfItemSold: 30,
    noOfItemInStock: 460,
    products: products,
  ),
  ProductCategory(
    categoryImageUrl: 'assets/images/',
    category: 'Women',
    rating: 4,
    noOfItemSold: 210,
    noOfItemInStock: 40,
    products: products,
  ),
  ProductCategory(
    categoryImageUrl: 'assets/images/',
    category: 'Accessories',
    rating: 3,
    noOfItemSold: 125,
    noOfItemInStock: 60,
    products: products,
  ),
];
