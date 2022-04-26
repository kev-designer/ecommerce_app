import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool status = false;
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 120),

              //USER NAME
              Text(
                "Username",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 16,
                ),
              ),
              TextFields(
                controller: username,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Username",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 24),

              //PASSWORD
              Text(
                "Password",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 16,
                ),
              ),
              TextFields(
                controller: password,
                obscureText: true,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Passowrd",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 24),

              //EMAIL
              Text(
                "Email Address",
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
                hintText: "Enter Email Address",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 32),

              //REMEMBER ME
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remember me",
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

              //SIGN UP BUTTON
              IconFilledButton(
                textName: "Sign Up",
                onPressed: () {},
                svgIcon: "",
                textColor: ColorData.white,
                buttonColor: ColorData.primary,
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      )),
    );
  }
}
