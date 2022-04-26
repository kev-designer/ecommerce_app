import 'package:flutter/material.dart';

//ONLINE DATA
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
    name: "Nike Pink Top Windrunner",
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
