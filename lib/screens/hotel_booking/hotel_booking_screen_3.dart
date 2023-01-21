import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:p3profileui/constants/constants.dart';

class HotelBookingScreen3 extends StatelessWidget {
  const HotelBookingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetail = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding * 2),
            TopBarCustom1(imagURL: productDetail["imageURL"]),
            SizedBox(height: defaultPadding * 2),
            // Text(
            //   "About places",
            //   style: TextStyle(
            //       fontWeight: FontWeight.w700, fontSize: defaultFontSize * 1.4),
            // ),
            CustomHeading1(headingText: "About Places"),
            SizedBox(height: defaultPadding),
            Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.""",
              style: TextStyle(
                  color: Colors.grey.shade500, fontSize: defaultFontSize),
            ),
            SizedBox(height: defaultPadding * 2),
            CustomHeading1(
              headingText: "Similar Features",
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconAndTextCustom1(
                    icondx: Icons.wifi,
                    text: 'Free wifi',
                  ),
                  IconAndTextCustom1(
                      icondx: Icons.person, text: "Room service"),
                  IconAndTextCustom1(icondx: Icons.pool, text: "Pool")
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.symmetric(vertical: defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBRadius * 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productDetail["imageURL"]))),
            ),
            CustomHeading1(headingText: "Our packages"),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInsidePackage(
                  cardHeading: "Adult",
                  cardSubHeading: "02",
                ),
                CardInsidePackage(
                  cardHeading: "Child",
                  cardSubHeading: "02",
                ),
                CardInsidePackage(
                  cardHeading: "Nigth",
                  cardSubHeading: "02",
                ),
                CardInsidePackage(
                  cardHeading: "Room",
                  cardSubHeading: "02",
                ),
                //adult, child , night, room
              ],
            )
          ],
        )),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: defaultPadding / 1.5, horizontal: defaultPadding),
          padding: EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
          decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(defaultBRadius)),
          child: Row(
            children: [
              Text(
                "\$${productDetail["rate"]}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: defaultFontSize),
              ),
              Spacer(),
              Text(
                "Booking",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: defaultFontSize),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardInsidePackage extends StatelessWidget {
  const CardInsidePackage({
    Key? key,
    required this.cardHeading,
    required this.cardSubHeading,
  }) : super(key: key);

  final String cardHeading;
  final String cardSubHeading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cardHeading,
              style: TextStyle(
                  fontSize: defaultFontSize, fontWeight: FontWeight.w600)),
          SizedBox(height: defaultPadding / 2),
          Text(cardSubHeading)
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(defaultBRadius)),
    );
  }
}

class CustomHeading1 extends StatelessWidget {
  const CustomHeading1({
    Key? key,
    required this.headingText,
  }) : super(key: key);
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headingText,
      style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: defaultFontSize * 1.4),
    );
  }
}

class IconAndTextCustom1 extends StatelessWidget {
  const IconAndTextCustom1({
    Key? key,
    required this.icondx,
    required this.text,
  }) : super(key: key);

  final IconData icondx;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(right: defaultPadding / 3),
              child: Icon(
                icondx,
                size: defaultFontSize * 1.2,
                color: Colors.blue.shade400,
              ),
            ),
          ),
          TextSpan(
              text: text,
              style: TextStyle(color: Colors.black, fontSize: defaultFontSize)),
        ],
      ),
    );
  }
}

class TopBarCustom1 extends StatelessWidget {
  const TopBarCustom1({
    Key? key,
    required this.imagURL,
  }) : super(key: key);

  final String imagURL;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                "Most Luxurious & Peaceful Natural Place",
                maxLines: 2,
                style: TextStyle(
                    fontSize: defaultFontSize * 1.4,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: defaultPadding / 2),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      FluentIcons.star_24_filled,
                      color: Colors.amber.shade400,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(width: defaultPadding),
                  Text("(17,486)"),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding),
          height: 60,
          width: 2,
          color: Colors.grey.shade400,
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultBRadius),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagURL))),
        )
      ],
    );
  }
}
