import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:p3profileui/constants/constants.dart';

class HotelViewScreen extends StatelessWidget {
  const HotelViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80'))),
                ),
                Positioned(
                    bottom: defaultPadding,
                    left: defaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WhiteTextM(text: "Crown Plaza ,"),
                        WhiteTextM(text: "Kerala Kochi"),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                              vertical: defaultPadding / 2),
                          margin: EdgeInsets.only(top: defaultPadding),
                          child: Text(
                            '8.4 / 85 reviews',
                            style: TextStyle(
                                color: Colors.white, fontSize: defaultFontSize),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius:
                                  BorderRadius.circular(defaultBRadius)),
                        )
                      ],
                    )),
                Positioned(
                    bottom: defaultPadding,
                    right: defaultPadding,
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                    )),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding * 3),
                  alignment: Alignment.topCenter,
                  child: WhiteTextS(
                    text: "DETAILS",
                  ),
                )
              ],
            ),
            StarRatingAndPrice(),
            SizedBox(height: defaultPadding),
            BookNowButton(),
            SizedBox(height: defaultPadding),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DESCRIPTION",
                    style: TextStyle(
                        fontSize: defaultFontSize * 1.1,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: defaultPadding * 1.2,
                  ),
                  Text(
                      """                                   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

                       Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                       
                        Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur""")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StarRatingAndPrice extends StatelessWidget {
  const StarRatingAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.2, vertical: defaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              RatingStars(),
              SizedBox(height: defaultPadding / 2.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: grey1,
                  ),
                  SizedBox(width: 2),
                  Text(
                    "8 KM to Lulu Mall",
                    style: TextStyle(color: textGrey),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(
                "\$ 200",
                style: TextStyle(
                    fontSize: defaultFontSize * 1.8,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff945600)),
              ),
              Text(
                "/per night",
                style: TextStyle(color: textGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 8, vertical: defaultPadding * 1.2),
      child: Text(
        "Book Now",
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Color(0xff945600),
          borderRadius: BorderRadius.circular(defaultBRadius * 2)),
    );
  }
}

class RatingStars extends StatelessWidget {
  const RatingStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: defaultFontSize * 1.5,
      itemPadding: EdgeInsets.symmetric(horizontal: 1.5),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}

class WhiteTextM extends StatelessWidget {
  const WhiteTextM({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: defaultFontSize * 2, color: Colors.white),
    );
  }
}

class WhiteTextS extends StatelessWidget {
  const WhiteTextS({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: defaultFontSize * 1.2, color: Colors.white),
    );
  }
}
