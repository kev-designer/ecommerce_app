import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController mobNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();

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
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.lato(
                      fontSize: height(context) * .03,
                      color: ColorData.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 120),

              //EMAIL
              Text(
                "Email",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 16,
                ),
              ),
              TextFields(
                controller: email,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Email",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 20),

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
