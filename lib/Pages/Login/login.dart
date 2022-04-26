import 'package:ecommerce_app/Pages/Bottom%20Nav/bottom_navbar.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
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
                  "Welcome",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .03,
                    color: ColorData.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Please enter your data to continue",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .02,
                    color: ColorData.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 100),

              //USER NAME
              Text(
                "Username",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 14,
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
                  fontSize: 14,
                ),
              ),
              TextFields(
                controller: password,
                obscureText: true,
                suffixIcon: SvgPicture.asset(
                  "assets/svg/eye.svg",
                  color: ColorData.primary,
                ),
                color: ColorData.black,
                hintText: "Enter Passowrd",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 24),

              //FORGOT PASS
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .018,
                          color: ColorData.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )),
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

              //LOGIN BUTTON
              IconFilledButton(
                textName: "Login",
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
              const SizedBox(height: 80),

              //TERM AND CONDITION
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
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "By connecting your account confirm that you agree with our  ",
                    style: GoogleFonts.lato(
                      fontSize: height(context) * .017,
                      color: ColorData.grey,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Term and Condition',
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .017,
                          color: ColorData.black,
                          fontWeight: FontWeight.w500,
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
