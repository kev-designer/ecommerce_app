import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

//ALL TEXT FIELDS
class TextFields extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final String hintText;
  final bool obscureText;
  final SvgPicture suffixIcon;
  final FontWeight weight;

  const TextFields({
    Key key,
    @required this.controller,
    @required this.obscureText,
    @required this.suffixIcon,
    @required this.color,
    @required this.hintText,
    @required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusColor: ColorData.black,
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        counterText: '',
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: suffixIcon,
          ),
        ),
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: GoogleFonts.lato(
          color: ColorData.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: GoogleFonts.lato(
        color: ColorData.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

//SEARCH BAR
class SearchBar extends StatelessWidget {
  final double width;
  final String hintText;
  final SvgPicture prefixIcon;
  final FontWeight weight;
  final Color borderColor;

  const SearchBar({
    Key key,
    @required this.prefixIcon,
    @required this.width,
    @required this.hintText,
    @required this.weight,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorData.ligthPurple,
      ),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          counterText: '',
          border: const OutlineInputBorder(),
          suffixIcon: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: SvgPicture.asset("assets/svg/Search.svg"),
          ),
          hintText: "Search...",
          labelStyle: GoogleFonts.lato(
            color: ColorData.grey,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintStyle: GoogleFonts.lato(
            color: ColorData.grey,
            fontSize: 16,
          ),
        ),
        style: GoogleFonts.lato(
          color: ColorData.grey,
          fontSize: 16,
        ),
      ),
    );
  }
}
