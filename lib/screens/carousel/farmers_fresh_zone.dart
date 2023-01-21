import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/carousel/corousel_app_ui.dart';

class FarmersFreshZone extends StatelessWidget {
  FarmersFreshZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            toolbarTextStyle: const TextStyle(color: Colors.white),
            backgroundColor: Colors.green,
            expandedHeight: 120,
            title: const Text(
              "Farmers Fresh Zone",
              style: TextStyle(
                  fontSize: defaultFontSize * 1.2, fontWeight: FontWeight.w800),
            ),
            actions: const [
              Icon(
                FluentIcons.location_24_regular,
                size: defaultFontSize * 1.2,
              ),
              Padding(
                padding: EdgeInsets.only(right: defaultPadding),
                child: Center(child: Text("  Kochi")),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Column(children: [SizedBox(height: 90), CustomSearchbar1()]),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const ScrollableRowCategory(),
            CarouselViewPart(),
            IconRow(),
            CategoryHeading(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: GridView.builder(
                  itemCount: CardDataList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.78,
                      crossAxisCount: 3,
                      crossAxisSpacing: defaultPadding / 2,
                      mainAxisSpacing: defaultPadding),
                  itemBuilder: (context, index) {
                    return categoryGridCard(
                        imageUrl: CardDataList[index]["imageURL"],
                        cardText: CardDataList[index]["cardItem"]);
                    ;
                  }),
            ),
          ]))
        ],
      ),
    );
  }
}

List<Map> CardDataList = [
  {
    'imageURL':
        'https://images.unsplash.com/photo-1592841200221-a6898f307baa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'cardItem': 'Vegetables',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1584868792839-bff69783216a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnJvY2NvbGl8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Exotic Vegetables',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGluZWFwcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Fruits',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXBwbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Exotic Fruits',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1493882946517-213a21fe70f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y3V0JTIwdmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Cut vegetables',
  },
  {
    'imageURL':
        'https://i.pinimg.com/474x/2d/79/9f/2d799f0f365720953070f92f305dd55a.jpg',
    'cardItem': 'Offers',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Spices',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b2lsJTIwYm90dGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Products',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1459162314928-9fe3e6c6fc43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3Byb3V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Microgreens & Sporouts',
  },
  {
    'imageURL':
        'https://images.unsplash.com/photo-1543158181-1274e5362710?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bnV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'cardItem': 'Nuts',
  },
];

class categoryGridCard extends StatelessWidget {
  const categoryGridCard({
    Key? key,
    required this.imageUrl,
    required this.cardText,
  }) : super(key: key);

  final String imageUrl;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBRadius / 2),
          boxShadow: [BoxShadow(color: Colors.grey.shade100)]),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(defaultBRadius / 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text(
              cardText,
              style: TextStyle(
                  fontSize: defaultFontSize / 1.25,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 5,
      ),
      child: Text(
        "Shop by Category",
        style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: defaultFontSize * 1.2,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  const IconRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      margin: EdgeInsets.symmetric(
          vertical: defaultPadding * 1.5, horizontal: defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultBRadius / 2,
          ),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconAndtext(
                iconname: FluentIcons.timer_24_regular,
                textPassed: "30 min Policy"),
            IconAndtext(
                iconname: FluentIcons.reading_mode_mobile_24_regular,
                textPassed: "Traceability"),
            IconAndtext(
                iconname: FluentIcons.communication_person_24_regular,
                textPassed: "Local sourcing"),
          ],
        ),
      ),
    );
  }
}

class IconAndtext extends StatelessWidget {
  const IconAndtext({
    Key? key,
    required this.iconname,
    required this.textPassed,
  }) : super(key: key);

  final IconData iconname;
  final String textPassed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconname,
          size: defaultFontSize * 2,
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          textPassed,
          style: TextStyle(color: textGrey),
        )
      ],
    );
  }
}

class CarouselViewPart extends StatelessWidget {
  CarouselViewPart({
    Key? key,
  }) : super(key: key);

  List<String> carouselImageUrl = [
    "https://images.unsplash.com/photo-1595736983917-0312669f395b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1561155707-3f9e6bb380b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1567375698348-5d9d5ae99de0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1592201426550-83c4be24a0a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1542223189-67a03fa0f0bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1540420773420-3366772f4999?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1595855759920-86582396756a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 280,
          // aspectRatio: 21 / 9,
          // enlargeCenterPage: true,
          autoPlayCurve: Curves.easeInOut,
          enableInfiniteScroll: false,
          // animateToClosest: false,
          autoPlay: true,
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(seconds: 1),
          // aspectRatio:
        ),
        items: List.generate(
            carouselImageUrl.length,
            (index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(carouselImageUrl[index]))),
                )));
  }
}

class ScrollableRowCategory extends StatelessWidget {
  const ScrollableRowCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: defaultPadding / 2),
              child: Chip(
                  backgroundColor: Colors.green.shade100,
                  side: BorderSide(color: Colors.green.shade300),
                  label: Text(
                    categoryList[index],
                    style: TextStyle(color: Colors.green.shade600),
                  )),
            );
          }),
    );
  }
}

List<String> categoryList = [
  "Vegetables",
  "Fruits",
  "Exotic Vegetables",
  "Exotic Fruits",
  "Cut Vegetables",
  "Spices",
  "Products",
  "Offers",
  "Microgreens and Sprouts",
];
