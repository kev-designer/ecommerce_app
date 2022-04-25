import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

//BIG BUTTON
class FilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final String svgIcon;
  final Color textColor;
  final Color buttonColor;

  const FilledButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.svgIcon,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: ButtonText(
            textName,
            textStyle: GoogleFonts.nunito(
              color: textColor,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}

//ICON BUTTON
class IconFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final String svgIcon;
  final Color textColor;
  final Color buttonColor;

  const IconFilledButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.svgIcon,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgIcon),
            const SizedBox(width: 12),
            ButtonText(
              textName,
              textStyle: GoogleFonts.nunito(
                color: textColor,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//ICON OUT LINE BUTTON
class IconOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final String svgIcon;
  final Color textColor;
  final Color buttonColor;

  const IconOutlinedButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.svgIcon,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        side: const BorderSide(
          color: ColorData.primary,
        ),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorData.ligthPurple,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgIcon),
            const SizedBox(width: 12),
            ButtonText(
              textName,
              textStyle: GoogleFonts.nunito(
                color: textColor,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//PRIMARY MEDIUM  BUTTON
class PrimaryMediumButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final Color textColor;
  final Color buttonColor;

  const PrimaryMediumButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width(context) * .36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // padding: const EdgeInsets.only(left: 20, right: 20),
          primary: buttonColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: ButtonText(
          textName,
          textStyle: GoogleFonts.nunito(
            color: textColor,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

//SECONDARY MEDIUM  BUTTON
class SecondaryMediumButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final Color textColor;
  final Color buttonColor;

  const SecondaryMediumButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width(context) * .36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // padding: const EdgeInsets.only(left: 20, right: 20),
          primary: buttonColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: ButtonText(
          textName,
          textStyle: GoogleFonts.nunito(
            color: textColor,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

//SMALL FILLED BUTTON
class SmallFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final String svgIcon;
  final Color textColor;
  final Color buttonColor;

  const SmallFilledButton(
      {Key key,
      @required this.textName,
      @required this.onPressed,
      @required this.svgIcon,
      @required this.textColor,
      @required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(left: 12, right: 12),
          primary: buttonColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgIcon),
            const SizedBox(width: 8),
            Text(
              textName,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w500,
                textStyle: GoogleFonts.lato(
                  fontSize: 15,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
