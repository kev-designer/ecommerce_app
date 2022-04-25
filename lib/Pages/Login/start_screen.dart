import 'package:ecommerce_app/Pages/Login/lets_start.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.primary,
      body: Stack(
        children: [
          Image.asset("assets/images/splach.png"),
          Positioned(
            bottom: 1,
            left: 16,
            right: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Look Good, Feel Good",
                      style: GoogleFonts.lato(
                          fontSize: height(context) * .03,
                          color: ColorData.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Create your individual & unique style and look amazing everyday.",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    //BUTTON
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //MEN
                        SecondaryMediumButton(
                          textName: "Men",
                          onPressed: () {},
                          textColor: ColorData.grey,
                          buttonColor: ColorData.secondary,
                        ),
                        //WOMEN
                        PrimaryMediumButton(
                          textName: "Women",
                          onPressed: () {},
                          textColor: ColorData.white,
                          buttonColor: ColorData.primary,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    //SKIP
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LetsStart(),
                          ),
                        );
                      },
                      child: Text(
                        "Skip".toUpperCase(),
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
