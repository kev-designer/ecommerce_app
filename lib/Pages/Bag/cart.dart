import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/new_arrival_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                  // SvgPicture.asset("assets/svg/Cart.svg"),
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
                        "Cart",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "2 Items",
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

              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                itemCount: cartDataList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 220,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorData.secondary),
                              borderRadius: BorderRadius.circular(12),
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
                      // const SizedBox(height: 8),
                      // Text(
                      //   wishlistData.name,
                      //   style: GoogleFonts.lato(
                      //     fontSize: height(context) * .017,
                      //     color: ColorData.black,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      //   overflow: TextOverflow.ellipsis,
                      //   maxLines: 1,
                      // ),
                      // const SizedBox(height: 8),
                      // Text(
                      //   wishlistData.price,
                      //   style: GoogleFonts.lato(
                      //     fontSize: height(context) * .02,
                      //     color: ColorData.primary,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
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
