import 'package:ecommerce_app/Pages/Data/new_arrival_data.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  NewArrivalData newArrivalData;

  DetailPage(this.newArrivalData, {Key key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState(newArrivalData);
}

class _DetailPageState extends State<DetailPage> {
  NewArrivalData newArrivalData;

  _DetailPageState(this.newArrivalData);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    List<String> inStockCategoriesList = ["S", "M", "L", "XL", "2XL"];

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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/svg/white-back.svg"),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/svg/white-cart.svg"),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newArrivalData.brand,
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .016,
                            color: ColorData.grey,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          newArrivalData.name,
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.black,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .016,
                            color: ColorData.grey,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          newArrivalData.price,
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                //ITEMS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      inStockCategoriesList.length,
                      (index) => GestureDetector(
                        onTap: () => setState(() {
                          _currentIndex = index;
                        }),
                        child: Container(
                          height: height(context) * .07,
                          width: height(context) * .07,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: _currentIndex == index
                                  ? ColorData.primary
                                  : ColorData.secondary
                              // color: Theme.of(context).primaryColor,
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                inStockCategoriesList[index],
                                style: GoogleFonts.lato(
                                  fontSize: height(context) * .021,
                                  color: _currentIndex == index
                                      ? ColorData.white
                                      : ColorData.black,
                                  fontWeight: _currentIndex == index
                                      ? FontWeight.w600
                                      : FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                //ADD TO CART BUTTON
                IconFilledButton(
                  textName: "Add to Cart",
                  onPressed: () {},
                  svgIcon: "",
                  textColor: ColorData.white,
                  buttonColor: ColorData.primary,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
