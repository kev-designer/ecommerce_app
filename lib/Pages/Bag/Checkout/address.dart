import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:ecommerce_app/Widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController name = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController phnNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //APPBAR
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/svg/Back.svg"),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Address",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .022,
                        color: ColorData.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),

                //NAME
                Text(
                  "Name",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: name,
                  hintText: "Enter Name",
                ),
                const SizedBox(height: 20),

                //COUNTRY
                Text(
                  "Country",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: country,
                  hintText: "Enter Country",
                ),
                const SizedBox(height: 20),
                //CITY
                Text(
                  "City",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: city,
                  hintText: "Enter City",
                ),
                const SizedBox(height: 20),

                //PHONE NUMBER
                Text(
                  "Phone Number",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: phnNumber,
                  hintText: "Enter Phone Number",
                ),
                const SizedBox(height: 20),

                //ADDRESS
                Text(
                  "Address",
                  style: GoogleFonts.lato(
                    color: ColorData.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                BoxTextFields(
                  controller: address,
                  hintText: "Enter Address",
                ),
                const SizedBox(height: 20),

                //SAVE ADD
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sace as primary address",
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

                //SAVE ADD BUTTON
                IconFilledButton(
                  textName: "Save Address",
                  onPressed: () {},
                  svgIcon: "",
                  textColor: ColorData.white,
                  buttonColor: ColorData.primary,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
