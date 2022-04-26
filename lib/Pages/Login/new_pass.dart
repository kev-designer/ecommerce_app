import 'package:ecommerce_app/Pages/Login/login.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                  "New Password",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .03,
                    color: ColorData.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 130),

              //PASSWORD
              Text(
                "Password",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 14,
                ),
              ),
              TextFields(
                controller: password,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Passowrd",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 24),

              //CONFIRM PASSWORD
              Text(
                "Confirm Password",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 14,
                ),
              ),
              TextFields(
                controller: cpassword,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Confirm Password",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 32),

              //TEXT
              Center(
                child: Text(
                  "Please write your new password.",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .017,
                    color: ColorData.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 80),
              //RESET BUTTON
              IconFilledButton(
                textName: "Rese Password",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                svgIcon: "",
                textColor: ColorData.white,
                buttonColor: ColorData.primary,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
