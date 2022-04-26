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
      cursorColor: ColorData.primary,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        enabled: true,
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorData.primary)),
        focusColor: ColorData.primary,
        counterText: '',
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorData.primary,
            width: 1.4,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorData.grey),
        ),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: suffixIcon,
          ),
        ),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        hintStyle: GoogleFonts.lato(
          color: ColorData.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: GoogleFonts.lato(
        color: ColorData.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

//SEARCH BAR
class SearchBar extends StatelessWidget {
  final String hintText;
  final FontWeight weight;

  const SearchBar({
    Key key,
    @required this.hintText,
    @required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorData.secondary,
      ),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          counterText: '',
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: SvgPicture.asset(
              "assets/svg/Search.svg",
              height: 26,
              color: ColorData.grey,
            ),
          ),
          hintText: "Search...",
          labelStyle: GoogleFonts.lato(
            color: ColorData.grey,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintStyle: GoogleFonts.lato(
            color: ColorData.grey,
            fontSize: 18,
          ),
        ),
        style: GoogleFonts.lato(
          color: ColorData.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}
