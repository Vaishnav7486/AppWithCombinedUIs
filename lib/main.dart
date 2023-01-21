import 'package:flutter/material.dart';
import 'package:p3profileui/screens/home screen/homescreen.dart';
import 'package:flutter/services.dart';
import 'package:p3profileui/screens/hotel%20booking%20screen%202/HotelBookingX22.dart';
import 'package:p3profileui/screens/hotel_booking/hotel_booking_screen_3.dart';
import 'package:p3profileui/screens/passing%20data%20between%20screens/data_pass_screen_2.dart';
import 'package:p3profileui/screens/profileui/profileui.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black)),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.white,
            // secondary: const Color(0xFFFFC107),
          ),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              foregroundColor: Colors.black)),
      home: HomeScreen(),
      routes: {
        'ProfileUI': ((context) => ProfileUI()),
        "DataPassScreen2": ((context) => DataPassScreen2()),
        "HotelBookingScreen3": ((context) => HotelBookingScreen3()),
        "HotelBookingX22": ((context) => HotelBookingX22()),
      },
    );
  }
}
