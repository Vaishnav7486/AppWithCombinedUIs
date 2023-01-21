import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/hotel_booking/hotel_booking_screen_2.dart';

class HotelBookingLoginScreen extends StatelessWidget {
  const HotelBookingLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: defaultPadding * 12),
        SizedBox(
            height: 120,
            width: 120,
            child: Image.asset("assets/icons/airplane.png")),
        SizedBox(
          height: defaultPadding * 4,
          width: double.infinity,
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HotelBookingScreen2()),
            );
          },
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(defaultBRadius * 2)),
            child: Center(
                child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultFontSize * 1.2,
                  fontWeight: FontWeight.w600),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
          child: Text(
            "-  or  - ",
            style: TextStyle(
                fontSize: defaultFontSize * 1.2, fontWeight: FontWeight.w500),
          ),
        ),
        LoginCard(
            text: "Facebook",
            logoURL: "assets/icons/facebook.png",
            containerColor: Colors.blue.shade400),
        SizedBox(height: defaultPadding),
        LoginCard(
            text: "Twitter",
            logoURL: "assets/icons/twitter.png",
            containerColor: Colors.blue.shade300),
        SizedBox(height: defaultPadding),
        LoginCard(
            text: "Facebook",
            logoURL: "assets/icons/google.png",
            containerColor: Colors.grey.shade300),
        SizedBox(height: defaultPadding * 3),
      ],
    )));
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({
    Key? key,
    required this.text,
    required this.logoURL,
    required this.containerColor,
  }) : super(key: key);
  final String text;
  final String logoURL;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      padding: EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(defaultBRadius * 2.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Login with $text",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: defaultFontSize),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding / 3),
            child: Image.asset(logoURL),
          )
        ],
      ),
    );
  }
}
