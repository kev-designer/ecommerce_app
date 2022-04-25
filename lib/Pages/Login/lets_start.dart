import 'package:ecommerce_app/Pages/Login/signup.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class LetsStart extends StatefulWidget {
  const LetsStart({Key key}) : super(key: key);

  @override
  State<LetsStart> createState() => _LetsStartState();
}

class _LetsStartState extends State<LetsStart> {
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
                child: SvgPicture.asset("assets/svg/Back.svg"),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Let’s Get Started",
                  style: GoogleFonts.lato(
                      fontSize: height(context) * .03,
                      color: ColorData.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 120),

              //FB BUTTON
              IconFilledButton(
                textName: "Facebook",
                onPressed: () {},
                svgIcon: "assets/svg/Facebook.svg",
                textColor: ColorData.white,
                buttonColor: ColorData.fb,
              ),
              const SizedBox(height: 32),

              //TWITTER BUTTON
              IconFilledButton(
                textName: "Twitter",
                onPressed: () {},
                svgIcon: "assets/svg/Twitter.svg",
                textColor: ColorData.white,
                buttonColor: ColorData.twitter,
              ),
              const SizedBox(height: 32),

              //GOOGLE BUTTON
              IconFilledButton(
                textName: "Google",
                onPressed: () {},
                svgIcon: "assets/svg/Google.svg",
                textColor: ColorData.white,
                buttonColor: ColorData.google,
              ),
              const SizedBox(height: 32),

              //CREATE ACC BUTTON
              IconFilledButton(
                textName: "Create an Account",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  );
                },
                svgIcon: "",
                textColor: ColorData.white,
                buttonColor: ColorData.primary,
              ),
              const SizedBox(height: 120),

              //ALREADY HAVE ACC
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Center(
                    child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .022,
                      color: ColorData.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign In',
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
