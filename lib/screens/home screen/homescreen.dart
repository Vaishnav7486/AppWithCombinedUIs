import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/Music%20player/music_playerX11.dart';
import 'package:p3profileui/screens/Music%20player/music_playerX12.dart';
import 'package:p3profileui/screens/backpress%20and%20alert/backpressAndAlert.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/google_navbar.dart';
import 'package:p3profileui/screens/bottom%20sheet/bottom_sheet.dart';
import 'package:p3profileui/screens/carousel/carousel_app_ui2.dart';
import 'package:p3profileui/screens/carousel/carousel_ui3.dart';
import 'package:p3profileui/screens/carousel/corousel_app_ui.dart';
import 'package:p3profileui/screens/carousel/farmers_fresh_zone.dart';
import 'package:p3profileui/screens/expansion%20tile/expansion_tile.dart';
import 'package:p3profileui/screens/hotel%20booking%20screen%202/HotelBookingX21.dart';
import 'package:p3profileui/screens/hotel%20screens/hotel_home_screen.dart';
import 'package:p3profileui/screens/hotel_booking/hotel_booking_screen.dart';
import 'package:p3profileui/screens/lottie%20animation/lottie_animation.dart';
import 'package:p3profileui/screens/passing%20data%20between%20screens/data_pass_screen1.dart';
import 'package:p3profileui/screens/profileui/profileui.dart';
import 'package:p3profileui/screens/radio%20button/radioButton.dart';
import 'package:p3profileui/screens/table/table.dart';
import 'package:p3profileui/screens/walletUI/invoicenumberScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 65,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: NavigationButtons(),
        ),
      ),
    );
  }
}

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mainNavigationButtonTile(
              buttonText: "Profile UI",
              onButtonTap: () {
                Navigator.pushNamed(context, 'ProfileUI');
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Navigation Bar",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavBarScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "G nav screen",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GNavBarScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Hotel UI",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HotelHomeScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Bottom sheet Screen",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BttonSheetScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Farmers Fresh Zone",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FarmersFreshZone()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Carousel Screen",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CarouselAppUI2()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Carousel Screen 2",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CarouselAppUI3()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Expansion Tile",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ExpansionTileUI1()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Lottie Animation ",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LottieAnimationScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Backpress and alert",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BackPressAndAlert()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Radio Button",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RadioButtonScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Data Passing",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DataPassScreen1()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Table",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TableScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Hotel Booking",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HotelBookingLoginScreen()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Hotel Booking 2",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HotelBookingX21()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Music Player UI1",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MusicPlayerX11()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Sampl Screen",
              onButtonTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MusicPlayerX12()));
              }),
          SizedBox(height: 24),
          mainNavigationButtonTile(
              buttonText: "Wallet UI",
              onButtonTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InvoiceNumberScreen()));
              }),
        ],
      ),
    );
  }
}

class mainNavigationButtonTile extends StatelessWidget {
  const mainNavigationButtonTile({
    Key? key,
    required this.buttonText,
    required this.onButtonTap,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: GestureDetector(
        onTap: onButtonTap,
        child: Container(
          // width: 280,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                buttonText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
