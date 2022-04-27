import 'package:ecommerce_app/Pages/Bag/cart.dart';
import 'package:ecommerce_app/Pages/Home/home.dart';
import 'package:ecommerce_app/Pages/Wallet/wallet.dart';
import 'package:ecommerce_app/Pages/Wishlist/wishlist.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool keyboardOpen = false;

  int currentTab = 1;
  final List<Widget> screens = [
    const HomePage(),
    const WishlistPage(),
    const CartPage(),
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
        // color: const Color(0xFFFEFEFE),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SizedBox(
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentTab == 1
                          ? Text(
                              "Home",
                              style: GoogleFonts.lato(
                                color: ColorData.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SvgPicture.asset(
                              "assets/svg/1home.svg",
                            ),
                    ],
                  ),
                ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentTab == 2
                          ? Text(
                              "Wishlist",
                              style: GoogleFonts.lato(
                                color: ColorData.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SvgPicture.asset(
                              "assets/svg/2wishlist.svg",
                            ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 1,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = const CartPage();
                        currentTab = 3;
                      },
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentTab == 3
                          ? Text(
                              "Cart",
                              style: GoogleFonts.lato(
                                color: ColorData.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SvgPicture.asset(
                              "assets/svg/3bag.svg",
                            ),
                    ],
                  ),
                ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentTab == 4
                          ? Text(
                              "Wallet",
                              style: GoogleFonts.lato(
                                color: ColorData.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SvgPicture.asset(
                              "assets/svg/4wallet.svg",
                            ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
