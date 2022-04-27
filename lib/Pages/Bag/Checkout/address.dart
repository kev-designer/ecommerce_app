import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
                    Center(child: Text("Address"))
                  ],
                ),
                const SizedBox(height: 20),

                const SizedBox(height: 40),

                //CHECK OUT BUTTON
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
