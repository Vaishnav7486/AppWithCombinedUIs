import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';
import 'package:p3profileui/screens/carousel/corousel_app_ui.dart';
import 'package:p3profileui/screens/hotel_booking/hotel_booking_screen_3.dart';

class HotelBookingX22 extends StatelessWidget {
  HotelBookingX22({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetail = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productDetail["imageURL"]))),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: defaultPadding * 2),
                  Text(
                    productDetail["place"],
                    style: TextStyle(fontSize: defaultFontSize * 2),
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum""",
                    style: TextStyle(
                        fontSize: defaultFontSize, color: Colors.grey.shade400),
                  ),
                  SizedBox(height: defaultPadding * 3),
                  Text(
                    "Places to Visit",
                    style: TextStyle(fontSize: defaultFontSize * 1.2),
                  ),
                  // Text(
                  // productDetail[index]["subloc"][1],
                  //   style: TextStyle(fontSize: defaultFontSize * 1.2),
                  // ),
                  SizedBox(height: defaultPadding),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          productDetail["subloc"].length,
                          (index) => Container(
                                margin: EdgeInsets.only(right: defaultPadding),
                                // padding: EdgeInsets.only(right: defaultPadding),
                                height: 220,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            productDetail["subloc"][index])),
                                    color: Colors.grey.shade200,
                                    borderRadius:
                                        BorderRadius.circular(defaultBRadius)),
                              )),
                    ),
                  ),
                  SizedBox(height: defaultPadding * 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
