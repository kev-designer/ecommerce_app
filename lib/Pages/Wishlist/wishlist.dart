import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/new_arrival_data.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int _currentIndex = 0;
  List<String> inStockCategoriesList = ["Adidas", "Nike", "Fila", "Puma"];
  List<String> inStockCategoriesImage = [
    "assets/svg/Addidas.svg",
    "assets/svg/Nike.svg",
    "assets/svg/fiila.svg",
    "assets/svg/Puma.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //APPBAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/Menu.svg"),
                  SvgPicture.asset("assets/svg/Cart.svg"),
                ],
              ),
              const SizedBox(height: 20),

              //TEXT
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "365",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "in wishlist",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  SmallFilledButton(
                    textName: "Edit",
                    onPressed: () {},
                    svgIcon: "assets/svg/edit.svg",
                    svgColor: ColorData.black,
                    textColor: ColorData.black,
                    buttonColor: ColorData.secondary,
                  )
                ],
              ),

              AlignedGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                itemCount: wishlistDataList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  WishlistData wishlistData = wishlistDataList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 220,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(wishlistData.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: SvgPicture.asset(
                              "assets/svg/Heart.svg",
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wishlistData.name,
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .017,
                          color: ColorData.black,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wishlistData.price,
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
