import 'package:ecommerce_app/Pages/Bag/Checkout/add_new_card.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController cardOwner = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController exp = TextEditingController();
  TextEditingController cvv = TextEditingController();
  bool status = true;

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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddNewCard(),
                      ),
                    );
                  },
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

                //SAVE ADD
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sace card info",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .018,
                        color: ColorData.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    FlutterSwitch(
                      width: 38,
                      height: 25,
                      toggleSize: 20,
                      value: status,
                      activeColor: ColorData.green,
                      borderRadius: 20.0,
                      padding: 2.7,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 48),

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
