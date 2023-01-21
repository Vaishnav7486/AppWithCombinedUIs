import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';

class HotelBookingX21 extends StatelessWidget {
  const HotelBookingX21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Places"),
        elevation: 0,
        // italy, viatnam, thailand, japan, europe
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: defaultPadding / 1.5),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: placeAndImageList.length,
              itemBuilder: (context, index) {
                return LocationAndImageCardC1(
                  productTotal: placeAndImageList[index],
                );
              }),
          // LocationAndImageCardC1(
          //     location: placeAndImageList[1]["place"],
          //     imageURL: placeAndImageList[1]["imageURL"],
          //     colr: Colors.green),
          SizedBox(height: defaultPadding / 1.5),
        ]),
      )),
    );
  }
}

class LocationAndImageCardC1 extends StatelessWidget {
  const LocationAndImageCardC1({
    Key? key,
    required this.productTotal,
  }) : super(key: key);

  final productTotal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "HotelBookingX22",
            arguments: productTotal);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(defaultPadding),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    productTotal["color"].withOpacity(0.6), BlendMode.srcOver),
                fit: BoxFit.cover,
                image: NetworkImage(productTotal["imageURL"]))),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 1.5),
            child: Text(
              productTotal["place"],
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: defaultFontSize * 1.5),
            ),
          ),
        ),
      ),
    );
  }
}

List<Map> placeAndImageList = [
  {
    "id": 1,
    "place": "Italy",
    "imageURL":
        "https://static.independent.co.uk/2021/08/10/15/iStock-1271579758.jpg?width=1200",
    "color": Colors.blue,
    "subloc": [
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354av6e12.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354Kd8VRS.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354uRtBgA.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354UXqSi9.jpg",
    ]
  },
  {
    "id": 2,
    "place": "Viatnam",
    "imageURL":
        "https://static.toiimg.com/thumb/msid-91025208,width-748,height-499,resizemode=4,imgsize-143956/.jpg",
    "color": Colors.indigo,
    "subloc": [
      "https://www.swedishnomad.com/wp-content/images/2018/09/Golden-Bridge.jpg",
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.travelanddestinations.com%2Fmost-beautiful-places-vietnam%2F&psig=AOvVaw2pchpyLVJ79UeI9E0nZfvu&ust=1674188718774000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIDQvZHl0vwCFQAAAAAdAAAAABAb",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354uRtBgA.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354UXqSi9.jpg",
    ]
  },
  {
    "id": 3,
    "place": "Thailand",
    "imageURL": "https://static.toiimg.com/photo/88863858.cms",
    "color": Colors.pink,
    "subloc": [
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354av6e12.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354Kd8VRS.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354uRtBgA.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354UXqSi9.jpg",
    ]
  },
  {
    "id": 4,
    "place": "Japan",
    "imageURL":
        "https://imageio.forbes.com/specials-images/imageserve/968162396/Japan-reopen-tourism-Covid/0x0.jpg?format=jpg&crop=5854,3678,x0,y229,safe&width=960",
    "color": Colors.lightBlue.shade900,
    "subloc": [
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354av6e12.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354Kd8VRS.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354uRtBgA.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354UXqSi9.jpg",
    ]
  },
  {
    "id": 5,
    "place": "Europe",
    "imageURL":
        "https://www.touropia.com/gfx/d/famous-towers-in-the-world/leaning_tower_of_pisa.jpg",
    "color": Colors.green,
    "subloc": [
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354av6e12.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354Kd8VRS.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354uRtBgA.jpg",
      "https://media.easemytrip.com/media/Blog/International/637642996720321354/637642996720321354UXqSi9.jpg",
    ]
  },
];
