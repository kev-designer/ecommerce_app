import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/new_arrival_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Text(
                "Hello",
                style: GoogleFonts.lato(
                  fontSize: height(context) * .032,
                  color: ColorData.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Welcom to Laza.",
                style: GoogleFonts.lato(
                  fontSize: height(context) * .02,
                  color: ColorData.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),

              //SEARCH
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SearchBar(
                      hintText: "Search...",
                      weight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 16),
                  SvgPicture.asset("assets/svg/Voice.svg"),
                ],
              ),
              const SizedBox(height: 20),

              //TEXT
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Brand",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .022,
                      color: ColorData.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .017,
                      color: ColorData.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

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
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _currentIndex == index
                                ? ColorData.primary
                                : ColorData.secondary
                            // color: Theme.of(context).primaryColor,
                            ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              inStockCategoriesImage[index],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              inStockCategoriesList[index],
                              style: GoogleFonts.lato(
                                fontSize: height(context) * .02,
                                color: _currentIndex == index
                                    ? ColorData.white
                                    : ColorData.black,
                                fontWeight: _currentIndex == index
                                    ? FontWeight.w600
                                    : FontWeight.w500,
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

              //TEXT
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arriaval",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .022,
                      color: ColorData.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .017,
                      color: ColorData.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              AlignedGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                itemCount: newArrivalDataList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  NewArrivalData newArrivalData = newArrivalDataList[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 220,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorData.primary,
                            image: DecorationImage(
                              image: AssetImage(newArrivalData.image),
                            )),
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
