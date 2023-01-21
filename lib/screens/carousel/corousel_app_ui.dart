import 'package:carousel_slider/carousel_slider.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';

class CorouselUI extends StatefulWidget {
  CorouselUI({super.key});

  @override
  State<CorouselUI> createState() => _CorouselUIState();
}

class _CorouselUIState extends State<CorouselUI> {
  int tag = 1;
  List<String> producList = [
    'vegetables',
    'fruits',
    'exotic vegetables',
    'exotic fruite',
    'fresh meets',
    'fish',
    'eggs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   title: Text("farmers App"),
        // ),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          elevation: 0,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          leading: Icon(
            FluentIcons.ios_arrow_ltr_24_regular,
            size: defaultFontSize * 1.2,
          ),
          expandedHeight: 120,
          title: Text(
            "FARMERS FRESH ZONE",
            style: TextStyle(
                fontSize: defaultFontSize * 1.1, fontWeight: FontWeight.w900),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: defaultPadding),
              child: Icon(FluentIcons.location_24_regular),
            ),
            Padding(
              padding: EdgeInsets.only(right: defaultPadding),
              child: Center(child: Text("Kochi")),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                SizedBox(
                  height: 95,
                ),
                CustomSearchbar1()
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            Container(
              // height: MediaQuery.of(context).size.height,
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: producList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Chip(
                              padding: EdgeInsets.symmetric(
                                  vertical: defaultPadding / 1.5,
                                  horizontal: defaultPadding / 1.5),
                              side: BorderSide(color: Colors.green.shade300),
                              backgroundColor: Colors.green.shade50,
                              label: Text(
                                producList[index],
                                style: TextStyle(color: Colors.green),
                              )),
                        );
                      },
                    ),
                  ),
                  CarouselScreen(),
                  shopByCategoryHeader(),

                  //     gridDelegate: gridDelegate, itemBuilder: itemBuilder)
                ],
              ),
            )
          ],
        )),
        SliverList(
            delegate: SliverChildListDelegate([
          // SliverGrid(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.teal[100 * (index % 9)],
          //         child: Text('grid item $index'),
          //       );
          //     },
          //     childCount: 1,
          //   ),
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     mainAxisSpacing: 15,
          //     crossAxisSpacing: 15,
          //     childAspectRatio: 2.0,
          //   ),
          // )
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: defaultPadding,
                  mainAxisSpacing: defaultPadding),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [Text("prin tthi s $index")],
                );
              })
        ]))
      ],
    ));
  }
}

class CustomSearchbar1 extends StatelessWidget {
  const CustomSearchbar1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(defaultPadding / 1.5)),
      child: TextFormField(
        cursorColor: Colors.green,
        decoration: InputDecoration(
            prefixIcon: Icon(
              FluentIcons.search_20_filled,
              color: Colors.grey,
            ),
            hintText: "search",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}

class shopByCategoryHeader extends StatelessWidget {
  const shopByCategoryHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Text("Shop by Category",
          style: TextStyle(
              fontSize: defaultPadding * 1.2,
              fontWeight: FontWeight.w700,
              color: textGreyDark)),
    );
  }
}

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            // margin:
            //     EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            // height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1672707222140-80905d7d0748?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60"))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            // height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1672707222128-2eb88b6646c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60"))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            // height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1673162814793-d3ed285eccdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60"))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            // height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1599220144359-d4b723bd476d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmVnZXRhdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"))),
          ),
        ],
        options: CarouselOptions(
          height: 300,
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
        ));
  }
}
