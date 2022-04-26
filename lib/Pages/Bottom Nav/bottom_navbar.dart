import 'package:ecommerce_app/Pages/Bag/bag.dart';
import 'package:ecommerce_app/Pages/Home/home.dart';
import 'package:ecommerce_app/Pages/Wallet/wallet.dart';
import 'package:ecommerce_app/Pages/Wishlist/wishlist.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/const.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool keyboardOpen = false;

  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const WishlistPage(),
    const BagPage(),
    const WalletPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 6,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const HomePage();
                      currentTab = 1;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/1home.svg",
                      color:
                          currentTab == 1 ? ColorData.primary : ColorData.grey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.lato(
                        fontWeight:
                            currentTab == 1 ? FontWeight.w400 : FontWeight.w400,
                        fontSize: height(context) * .013,
                        color: currentTab == 1
                            ? ColorData.primary
                            : ColorData.grey,
                      ),
                    ),
                  ],
                ),
              ),

              //WISHLIST
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const WishlistPage();
                      currentTab = 2;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/2wishlist.svg",
                      color:
                          currentTab == 2 ? ColorData.primary : ColorData.grey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Wishlist",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .013,
                        fontWeight:
                            currentTab == 2 ? FontWeight.w400 : FontWeight.w400,
                        color: currentTab == 2
                            ? ColorData.primary
                            : ColorData.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const BagPage();
                      currentTab = 3;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/3bag.svg",
                      color:
                          currentTab == 3 ? ColorData.primary : ColorData.grey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Bag",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .013,
                        fontWeight:
                            currentTab == 3 ? FontWeight.w400 : FontWeight.w400,
                        color: currentTab == 3
                            ? ColorData.primary
                            : ColorData.grey,
                      ),
                    ),
                  ],
                ),
              ),

              //WALLET
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const WalletPage();
                      currentTab = 4;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/4wallet.svg",
                      color:
                          currentTab == 4 ? ColorData.primary : ColorData.grey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Wallet",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .013,
                        fontWeight:
                            currentTab == 4 ? FontWeight.w400 : FontWeight.w400,
                        color: currentTab == 4
                            ? ColorData.primary
                            : ColorData.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
