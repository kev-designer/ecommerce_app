import 'package:ecommerce_app/Pages/Login/verification_code.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();

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
                  "Forgot Password",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .03,
                    color: ColorData.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Image.asset("assets/illustrator/cloud.png"),
              const SizedBox(height: 64),

              //EMAIL
              Text(
                "Enter Email Address",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 14,
                ),
              ),
              TextFields(
                controller: email,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Email Address",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 80),

              //CONFIRM BUTTON
              IconFilledButton(
                textName: "Confirm Mail",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationCode(),
                    ),
                  );
                },
                svgIcon: "",
                textColor: ColorData.white,
                buttonColor: ColorData.primary,
              ),
              const SizedBox(height: 80),

              //TEXT
              Center(
                child: Text(
                  "Please write your email to receive a confirmation code to set a new password.",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .017,
                    color: ColorData.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
