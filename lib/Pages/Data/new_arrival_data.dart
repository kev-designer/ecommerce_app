import 'package:flutter/material.dart';

//NEW ARRIVAL DATA
class NewArrivalData {
  String name;
  String brand;
  String tax;
  String totalAmount;
  String review;
  String price;
  String des;
  String image;
  String revierName;
  String revierImage;
  String rating;
  String dateTime;

  NewArrivalData({
    @required this.name,
    @required this.review,
    @required this.brand,
    @required this.tax,
    @required this.price,
    @required this.image,
    @required this.totalAmount,
    @required this.des,
    @required this.revierName,
    @required this.revierImage,
    @required this.dateTime,
    @required this.rating,
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
    revierImage: "assets/images/13.jpeg",
    dateTime: "13 Sept, 2020",
    revierName: "John Smith",
    rating: "4.8",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
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
    revierImage: "assets/images/14.jpeg",
    dateTime: "20 Oct, 2020",
    revierName: "Leaila Smith",
    rating: "3.8",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
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
    revierImage: "assets/images/15.jpeg",
    dateTime: "06 Apr, 2020",
    revierName: "Alex",
    rating: "4.8",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
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
    revierImage: "assets/images/16.jpeg",
    dateTime: "25 Aug, 2020",
    revierName: "Katrina",
    rating: "4.0",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
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
