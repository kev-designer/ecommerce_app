import 'package:ecommerce_app/Pages/Bottom%20Nav/bottom_navbar.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmed extends StatefulWidget {
  const OrderConfirmed({Key key}) : super(key: key);

  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/svg/Back.svg")),
              const SizedBox(height: 60),
              Center(
                child: SvgPicture.asset("assets/illustrator/confirm.svg"),
              ),
              const SizedBox(height: 64),
              Center(
                child: Text(
                  "Order Confirmed!",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .03,
                    color: ColorData.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Your order has been confirmed, we will send you confirmation email shortly.",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .02,
                    color: ColorData.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 80),

              //GO TO ORDER
              IconFilledButton(
                textName: "Go to Orders",
                onPressed: () {
                  Navigator.pop(context);
                },
                svgIcon: "",
                textColor: ColorData.grey,
                buttonColor: ColorData.secondary,
              ),
              const SizedBox(height: 32),

              //CONTINUE  SHOPPING
              IconFilledButton(
                textName: "Continue Shopping",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavBar(),
                    ),
                  );
                },
                svgIcon: "",
                textColor: ColorData.white,
                buttonColor: ColorData.primary,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
