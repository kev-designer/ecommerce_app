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
    List<String> inStockImagesList = [
      "assets/images/cart/1.png",
      "assets/images/cart/2.png",
      "assets/images/cart/3.png",
      "assets/images/cart/4.png"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                      child: SvgPicture.asset("assets/svg/Back.svg"),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/svg/Cart.svg"),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset(
                    newArrivalData.image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 24),
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
                const SizedBox(height: 10),

                //IIMAGESTEMS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      inStockImagesList.length,
                      (index) => Container(
                        height: height(context) * .1,
                        width: height(context) * .1,
                        margin: const EdgeInsets.only(right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              inStockImagesList[index],
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                //SIZE TEXT
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose Size",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Size Guide",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .017,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                //SIZE TEMS
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
                                  ? ColorData.secondary
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
                                      ? ColorData.black
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
                const SizedBox(height: 24),

                //DESCRIPTION EXT
                Text(
                  "Description",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .02,
                    color: ColorData.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  newArrivalData.des,
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .018,
                    color: ColorData.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                const SizedBox(height: 24),

                //REVIEW TEXT
                Text(
                  "Review",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .02,
                    color: ColorData.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(newArrivalData.revierImage),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              newArrivalData.revierName,
                              style: GoogleFonts.lato(
                                fontSize: height(context) * .02,
                                color: ColorData.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              newArrivalData.dateTime,
                              style: GoogleFonts.lato(
                                fontSize: height(context) * .018,
                                color: ColorData.grey,
                                height: 1.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          newArrivalData.rating,
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "  Rating",
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .016,
                            color: ColorData.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  newArrivalData.review,
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .018,
                    color: ColorData.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                const SizedBox(height: 24),

                //TOTAL PRICE TEXT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.black,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          newArrivalData.totalAmount,
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.black,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),

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
