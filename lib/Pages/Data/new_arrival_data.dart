import 'package:flutter/material.dart';

//NEW ARRIVAL DATA
class NewArrivalData {
  String name;
  String price;
  String image;

  NewArrivalData({
    @required this.name,
    @required this.price,
    @required this.image,
  });
}

List<NewArrivalData> newArrivalDataList = [
  NewArrivalData(
    name: "Nike Sportswear Fleece",
    price: "\$99",
    image: "assets/images/1.jpeg",
  ),
  NewArrivalData(
    name: "Nike Pink Top",
    price: "\$19",
    image: "assets/images/2.jpeg",
  ),
  NewArrivalData(
    name: "Black Jacket",
    price: "\$25",
    image: "assets/images/3.jpeg",
  ),
  NewArrivalData(
    name: "Brown Jacket",
    price: "\$57",
    image: "assets/images/4.jpeg",
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
