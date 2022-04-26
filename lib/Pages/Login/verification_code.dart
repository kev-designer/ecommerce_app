import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';
import 'new_pass.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  TextEditingController code = TextEditingController();

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
                  "Verification Code",
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
                "Enter Code",
                style: GoogleFonts.lato(
                  color: ColorData.grey,
                  fontSize: 14,
                ),
              ),
              TextFields(
                controller: code,
                obscureText: false,
                suffixIcon: null,
                color: ColorData.black,
                hintText: "Enter Verification Code",
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 24),

              //CODE
              Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "00:20 ",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .017,
                    color: ColorData.black,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' resend confirmation code.',
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .017,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )),
              const SizedBox(height: 80),

              //CONFIRM BUTTON
              IconFilledButton(
                textName: "Confirm Code",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPassword(),
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
