import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hidable/hidable.dart';
import 'package:p3profileui/constants/constants.dart';

class HotelBookingScreen2 extends StatelessWidget {
  HotelBookingScreen2({super.key});

  TextEditingController fromsearch = TextEditingController();
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        title: RichText(
            text: TextSpan(
                text: "Go",
                style: TextStyle(
                    color: Colors.blue.shade300,
                    fontSize: defaultFontSize * 1.4,
                    fontWeight: FontWeight.w600),
                children: const [
              TextSpan(text: "Fast", style: TextStyle(color: Colors.black))
            ])),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media.vanityfair.com/photos/6319eab06009e759e6638e28/master/w_2560%2Cc_limit/1421315651"),
          ),
          SizedBox(
            width: defaultPadding,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              SearchBarCustom1(fromsearch: fromsearch),
              popularPlacesLink(),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding),
                  itemCount: hotelListData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() {
                        int tappedIndex = hotelListData[index]["id"];
                        print(tappedIndex);
                        Map hotelDetail = hotelListData[index];
                        print(hotelDetail);
                        Navigator.pushNamed(context, "HotelBookingScreen3",
                            arguments: hotelDetail);
                      }),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        hotelListData[index]["imageURL"])),
                                color: Colors.grey.shade200,
                                borderRadius:
                                    BorderRadius.circular(defaultBRadius)),
                          ),
                          Positioned(
                              top: defaultPadding / 2,
                              left: defaultPadding / 2,
                              child: Container(
                                height: 24,
                                width: 60,
                                child: Center(
                                    child: Text(
                                  "\$" +
                                      hotelListData[index]["rate"].toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade300,
                                    borderRadius: BorderRadius.circular(
                                        defaultPadding / 3)),
                              )),
                          Positioned(
                              bottom: defaultPadding / 2,
                              left: defaultPadding / 2,
                              child: Text(
                                hotelListData[index]["name"],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: defaultFontSize),
                              ))
                        ],
                      ),
                    );
                  }),
              SizedBox(height: defaultPadding * 3)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Hidable(
        preferredWidgetSize: Size.fromHeight(80),
        controller: scrollController,
        child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            height: 80,
            width: double.infinity,
            child: ExploreNowButton()),
      ),
    );
  }

  void onPerssedHotel(
    context,
  ) {}
}

class ExploreNowButton extends StatelessWidget {
  const ExploreNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 360,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              "Explore Now",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: defaultFontSize),
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(defaultBRadius)),
      ),
    );
  }
}

class popularPlacesLink extends StatelessWidget {
  const popularPlacesLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Populat Places",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: defaultFontSize * 1.1),
          ),
          Text(
            "View All",
            style: TextStyle(
                color: Colors.blue.shade400,
                fontWeight: FontWeight.w600,
                fontSize: defaultFontSize),
          )
        ],
      ),
    );
  }
}

class SearchBarCustom1 extends StatelessWidget {
  const SearchBarCustom1({
    Key? key,
    required this.fromsearch,
  }) : super(key: key);

  final TextEditingController fromsearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBRadius)),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: fromsearch,
              cursorColor: Colors.grey.shade500,
              cursorHeight: 24,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: defaultPadding),
                  hintText: "search",
                  border: InputBorder.none),
            ),
          ),
          SizedBox(width: 60, child: Icon(Icons.search))
        ],
      ),
    );
  }
}

List<Map> hotelListData = [
  {
    "id": 1,
    "rate": 456.00,
    "name": "Hard Rock Hotel Bali",
    "imageURL":
        "https://cdn.escapio.com/public/cache/hotel/plain-nowater/x/10672_cavo_olympo_luxury_resort_spa_182000669.jpg"
  },
  {
    "id": 2,
    "rate": 696.00,
    "name": "Malibu Beach Inn",
    "imageURL":
        "https://www.momondo.in/himg/7c/b9/0b/leonardo-1064920-King_Pier_View_Balcony_O-363500.jpg"
  },
  {
    "id": 3,
    "rate": 680.00,
    "name": "Navera Inn Greece",
    "imageURL":
        "https://i0.wp.com/www.kidslovegreece.com/wp-content/uploads/2017/11/The-Mykonos-Blu-Grecotel-Exclusive-Resort-Hotel-best-accommodation-luxury-high-standards-Cyclades-Greece-familes-kidslovegreece-Psarou-private-beach-greek-islands-2.jpg?ssl=1"
  },
  {
    "id": 4,
    "rate": 945.00,
    "name": "Aspaki Art Mansion",
    "imageURL":
        "https://thetravelexpert.ie/wp-content/uploads/2021/07/Stella-Island-Crete.jpg"
  },
  {
    "id": 5,
    "rate": 875.00,
    "name": "Makedonia Palace",
    "imageURL":
        "https://www.thetimes.co.uk/travel/wp-content/uploads/sites/6/2022/05/HERO_Paralos_1c0afd83_Credit_Expedia.jpg?w=2200&h=880&crop=1"
  },
  {
    "id": 6,
    "rate": 920.00,
    "name": "La Perla",
    "imageURL":
        "https://www.travelinglifestyle.net/wp-content/uploads/2018/01/alila-villas-bali.jpg"
  },
  {
    "id": 7,
    "rate": 760.00,
    "name": "Navera Inn",
    "imageURL":
        "https://pix10.agoda.net/hotelImages/6770973/0/70fdf4007af28030f6aa688d65467784.jpg?ca=9&ce=1&s=1024x768"
  },
];
