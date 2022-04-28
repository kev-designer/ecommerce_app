import 'package:flutter/material.dart';

//NEW ARRIVAL DATA
class NewArrivalData {
  String name;
  String brand;
  String tax;
  String totalAmount;
  String smallSize;
  String mediumSize;
  String largeSize;
  String extraLargeSize;
  String doubleLargeSize;
  String price;
  String des;
  String image;

  NewArrivalData({
    @required this.name,
    @required this.brand,
    @required this.tax,
    @required this.price,
    @required this.image,
    @required this.totalAmount,
    @required this.smallSize,
    @required this.largeSize,
    @required this.extraLargeSize,
    @required this.doubleLargeSize,
    @required this.mediumSize,
    @required this.des,
  });
}

List<NewArrivalData> newArrivalDataList = [
  NewArrivalData(
    name: "Nike Sportswear Fleece",
    brand: "Nike",
    price: "\$99",
    tax: "\$21",
    totalAmount: "\$120",
    image: "assets/images/1.jpeg",
    smallSize: "S",
    mediumSize: "M",
    largeSize: "L",
    extraLargeSize: "XL",
    doubleLargeSize: "2XL",
    des:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feels good.",
  ),
  NewArrivalData(
    name: "Nike Pink Top",
    price: "\$19",
    image: "assets/images/2.jpeg",
    brand: "Nike",
    tax: "\$21",
    totalAmount: "\$40",
    smallSize: "S",
    mediumSize: "M",
    largeSize: "L",
    extraLargeSize: "XL",
    doubleLargeSize: "2XL",
    des:
        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feels good.",
  ),
  NewArrivalData(
    name: "Black Jacket",
    price: "\$25",
    image: "assets/images/3.jpeg",
    brand: "Adidas",
    tax: "\$21",
    totalAmount: "\$46",
    smallSize: "S",
    mediumSize: "M",
    largeSize: "L",
    extraLargeSize: "XL",
    doubleLargeSize: "2XL",
    des:
        "The Adidas Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feels good.",
  ),
  NewArrivalData(
    name: "Brown Jacket",
    price: "\$57",
    image: "assets/images/4.jpeg",
    brand: "Nike",
    tax: "\$21",
    totalAmount: "\$120",
    smallSize: "S",
    mediumSize: "M",
    largeSize: "L",
    extraLargeSize: "XL",
    doubleLargeSize: "2XL",
    des:
        "The Nike Throwback Pullover Jacket is made from premium French terry fabric that blends a performance feels good.",
  ),
];

//WISHLIST DATA
class WishlistData {
  String name;
  String price;
  String image;

  WishlistData({
    @required this.name,
    @required this.price,
    @required this.image,
  });
}

List<WishlistData> wishlistDataList = [
  WishlistData(
    name: "Nike Sportswear Fleece",
    price: "\$99",
    image: "assets/images/11.jpeg",
  ),
  WishlistData(
    name: "Nike Pink Top",
    price: "\$19",
    image: "assets/images/12.jpeg",
  ),
  WishlistData(
    name: "Black Jacket",
    price: "\$25",
    image: "assets/images/13.jpeg",
  ),
  WishlistData(
    name: "Nike Sportswear Fleece",
    price: "\$99",
    image: "assets/images/1.jpeg",
  ),
  WishlistData(
    name: "Nike Pink Top",
    price: "\$19",
    image: "assets/images/2.jpeg",
  ),
  WishlistData(
    name: "Black Jacket",
    price: "\$25",
    image: "assets/images/3.jpeg",
  ),
  WishlistData(
    name: "Brown Jacket",
    price: "\$57",
    image: "assets/images/4.jpeg",
  ),
  WishlistData(
    name: "Brown Jacket",
    price: "\$57",
    image: "assets/images/14.jpeg",
  ),
  WishlistData(
    name: "Nike Sportswear Fleece",
    price: "\$99",
    image: "assets/images/15.jpeg",
  ),
  WishlistData(
    name: "Nike Pink Top",
    price: "\$19",
    image: "assets/images/16.jpeg",
  ),
];

//CART DATA
class CartData {
  String name;
  String brand;
  String price;
  String image;
  String item;

  CartData({
    @required this.name,
    @required this.brand,
    @required this.price,
    @required this.image,
    @required this.item,
  });
}

List<CartData> cartDataList = [
  CartData(
      name: "Nike Sportswear Fleece",
      brand: "Nike",
      price: "\$30 (-\$4.00 Tax)",
      image: "assets/images/11.jpeg",
      item: "2"),
  CartData(
      name: "Nike Pink Top",
      brand: "Nike",
      price: "\$23 (-\$9.00 Tax)",
      image: "assets/images/12.jpeg",
      item: "1"),
];
