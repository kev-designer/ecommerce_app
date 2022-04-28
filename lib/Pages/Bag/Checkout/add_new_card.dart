import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  TextEditingController cardOwner = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController exp = TextEditingController();
  TextEditingController cvv = TextEditingController();
  int _currentIndex = 0;
  List<String> inCardImage = [
    "assets/images/master.png",
    "assets/images/master.png",
    "assets/images/master.png",
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
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/svg/Back.svg"),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Add New Card",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .022,
                        color: ColorData.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),

                //ITEMS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    inCardImage.length,
                    (index) => GestureDetector(
                      onTap: () => setState(
                        () {
                          _currentIndex = index;
                        },
                      ),
                      child: Container(
                        width: 90,
                        height: 45,
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentIndex == index
                                  ? const Color(0xffFF5F00)
                                  : ColorData.secondary,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: _currentIndex == index
                                ? const Color(0xffFFEEE3)
                                : ColorData.secondary
                            // color: Theme.of(context).primaryColor,
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              inCardImage[index],
                              height: height(context) * .022,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                //CARD OWNER
                Text(
                  "Card Owner",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: cardOwner,
                  hintText: "Enter Card Owner",
                ),
                const SizedBox(height: 20),

                //CARD NUMBER
                Text(
                  "Card Number",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: cardNumber,
                  hintText: "Enter Card Number",
                ),
                const SizedBox(height: 20),

                //EXP
                Text(
                  "Exp Date",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: exp,
                  hintText: "Enter Exp Date",
                ),
                const SizedBox(height: 20),

                //CVV
                Text(
                  "CVV",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: cvv,
                  hintText: "Enter CVV",
                ),
                const SizedBox(height: 60),

                //ADD CARD BUTTON
                IconFilledButton(
                  textName: "Add Card",
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
