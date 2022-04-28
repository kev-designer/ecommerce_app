import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
                      "Payment",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .022,
                        color: ColorData.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),

                //CARD
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: ColorData.primary,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/card1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //SAVE CARD BUTTON
                IconOutlinedButton(
                  textName: "Add new Card",
                  onPressed: () {},
                  svgIcon: "assets/svg/Plus.svg",
                  textColor: ColorData.primary,
                  buttonColor: ColorData.ligthPurple,
                ),
                const SizedBox(height: 24),

                //CARD OWNER
                Text(
                  "Card Owner",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                TextFields(
                  controller: cardOwner,
                  obscureText: false,
                  suffixIcon: null,
                  color: ColorData.black,
                  hintText: "Enter Card Owner",
                  weight: FontWeight.w600,
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
                TextFields(
                  controller: cardNumber,
                  obscureText: false,
                  suffixIcon: null,
                  color: ColorData.black,
                  hintText: "Enter Card Number",
                  weight: FontWeight.w600,
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
                TextFields(
                  controller: exp,
                  obscureText: false,
                  suffixIcon: null,
                  color: ColorData.black,
                  hintText: "Enter Exp Date",
                  weight: FontWeight.w600,
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
                TextFields(
                  controller: cvv,
                  obscureText: false,
                  suffixIcon: null,
                  color: ColorData.black,
                  hintText: "Enter CVV",
                  weight: FontWeight.w600,
                ),
                const SizedBox(height: 20),

                //SAVE CARD BUTTON
                IconFilledButton(
                  textName: "Save Card",
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
