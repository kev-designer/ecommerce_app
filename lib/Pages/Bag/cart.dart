import 'package:ecommerce_app/Pages/Bag/Checkout/address.dart';
import 'package:ecommerce_app/Widgets/buttons.dart';
import 'package:ecommerce_app/Widgets/colors.dart';
import 'package:ecommerce_app/Widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/new_arrival_data.dart';
import 'Checkout/order_confirmed.dart';
import 'Checkout/payment.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/Menu.svg"),
                    // SvgPicture.asset("assets/svg/Cart.svg"),
                  ],
                ),
                const SizedBox(height: 20),

                //TEXT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cart",
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .022,
                            color: ColorData.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "2 Items",
                          style: GoogleFonts.lato(
                            fontSize: height(context) * .02,
                            color: ColorData.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                    SmallFilledButton(
                      textName: "Edit",
                      onPressed: () {},
                      svgIcon: "assets/svg/edit.svg",
                      svgColor: ColorData.black,
                      textColor: ColorData.black,
                      buttonColor: ColorData.secondary,
                    )
                  ],
                ),

                //BOX
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  itemCount: cartDataList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    CartData cartData = cartDataList[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorData.secondary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        cartData.image,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartData.name,
                                        style: GoogleFonts.lato(
                                          fontSize: height(context) * .018,
                                          color: ColorData.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        cartData.brand,
                                        style: GoogleFonts.lato(
                                          fontSize: height(context) * .018,
                                          color: ColorData.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        cartData.price,
                                        style: GoogleFonts.lato(
                                          fontSize: height(context) * .016,
                                          color: ColorData.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      const SizedBox(height: 12),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/svg/down.svg",
                                                  height: 28,
                                                ),
                                                const SizedBox(width: 24),
                                                Text(
                                                  cartData.item,
                                                  style: GoogleFonts.lato(
                                                    fontSize:
                                                        height(context) * .016,
                                                    color: ColorData.grey,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                const SizedBox(width: 24),
                                                SvgPicture.asset(
                                                  "assets/svg/down.svg",
                                                  height: 28,
                                                ),
                                              ],
                                            ),
                                            SvgPicture.asset(
                                              "assets/svg/delete.svg",
                                              height: 28,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),

                //DELIVERY TEXT
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddressPage(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/svg/showmore.svg",
                        height: height(context) * .022,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/map.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: SvgPicture.asset("assets/svg/pin.svg"),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chhatak, Sunamgonj 12/8AB",
                                  style: GoogleFonts.lato(
                                    fontSize: height(context) * .02,
                                    color: ColorData.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "2 Items",
                                  style: GoogleFonts.lato(
                                    fontSize: height(context) * .02,
                                    color: ColorData.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset("assets/svg/Check.svg")
                  ],
                ),
                const SizedBox(height: 20),

                //PAYMENT TEXT
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Method",
                        style: GoogleFonts.lato(
                          fontSize: height(context) * .022,
                          color: ColorData.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/svg/showmore.svg",
                        height: height(context) * .022,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/visa.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Visa Classic",
                                  style: GoogleFonts.lato(
                                    fontSize: height(context) * .02,
                                    color: ColorData.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "**** 7690",
                                  style: GoogleFonts.lato(
                                    fontSize: height(context) * .02,
                                    color: ColorData.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset("assets/svg/Check.svg")
                  ],
                ),
                const SizedBox(height: 20),

                //ORDER INFO
                Text(
                  "Order Info",
                  style: GoogleFonts.lato(
                    fontSize: height(context) * .022,
                    color: ColorData.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub Total",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      "\$110",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Cost",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      "\$10",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      "\$120",
                      style: GoogleFonts.lato(
                        fontSize: height(context) * .02,
                        color: ColorData.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                //CHECK OUT BUTTON
                IconFilledButton(
                  textName: "Checkout",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderConfirmed(),
                      ),
                    );
                  },
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
