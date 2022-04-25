import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'const.dart';

//BACK ARROW ICON
AppBar buildAppBar(String appbarTitle, BuildContext context) {
  return AppBar(
    elevation: 1,
    shadowColor: Colors.black54,
    leadingWidth: 36,
    centerTitle: false,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 28,
      ),
      color: Colors.black,
    ),
    title: Text(
      appbarTitle,
      style: GoogleFonts.lato(
        fontSize: height(context) * .024,
        fontWeight: FontWeight.w600,
        color: ColorData.black,
      ),
    ),
  );
}

//HAMBURGURE MENU ICON
AppBar buildAppBarMenuIcon(
  BuildContext context,
  String appbarTitle,
) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 1,
    shadowColor: Colors.black54,
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          "assets/svgs/menu.svg",
        ),
      ),
    ),
    title: SvgPicture.asset("assets/logo/appbar_logo.svg"),
  );
}

//SIDE MENU
Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "James Brown",
                style: GoogleFonts.lato(
                  fontSize: height(context) * .028,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "jamesbrown@gmail.com",
                style: GoogleFonts.lato(
                  fontSize: height(context) * .02,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                thickness: .7,
                color: ColorData.grey,
              ),

              //  MY DIARY
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/my_diary.svg"),
                      const SizedBox(width: 16),
                      Text(
                        "My Diary",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //SEARCH
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/msg_hub.svg"),
                      const SizedBox(width: 16),
                      Text(
                        "Messaging Hub",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //MY PRATITIONER
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/my_pra.svg",
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "My Practitioners",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //ONLINE CONSULT
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/online_consult.svg"),
                      const SizedBox(width: 16),
                      Text(
                        "Online Consult",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //MY ACCOUNT
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/my_account.svg"),
                      const SizedBox(width: 16),
                      Text(
                        "My Account",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .02,
                          color: ColorData.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),

              //LOGOUT  BUTTON
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: ColorData.primary,
                  ),
                  // ignore: deprecated_member_use
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Logout".toUpperCase(),
                          style: GoogleFonts.nunito(
                            fontSize: height(context) * .022,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset("assets/svgs/logout_arrow.svg")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            // left: 10,
            // right: 10,
            child: Text(
              "© 2022Allied Health Express",
              style: GoogleFonts.lato(
                fontSize: height(context) * .018,
                color: ColorData.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
