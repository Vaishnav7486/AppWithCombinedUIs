import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';
import 'package:p3profileui/screens/passing%20data%20between%20screens/dummydata_for_data_passing.dart';

class DataPassScreen1 extends StatelessWidget {
  const DataPassScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pass Data From here"),
        elevation: 0,
      ),
      // body: Center(
      //   child: GridView.count(
      //     crossAxisCount: 3,
      //     children: List.generate(
      //         dummydataset1.length,
      //         (index) => Column(
      //               children: [
      //                 Text(dummydataset1[index]["id"].toString()),
      //                 Text(dummydataset1[index]["name"]),
      //                 Text(dummydataset1[index]["description"]),
      //               ],
      //             )),
      //   ),
      // ),
      body: ListView(
        padding: EdgeInsets.all(defaultPadding),
        children: dummydataset1
            .map((product) => TextButton(
                onPressed: () {
                  gotodatapasspage2(context, product["id"]);
                },
                child: Text(
                  product["id"].toString(),
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle()))
            .toList(),
      ),
    );
  }

  void gotodatapasspage2(BuildContext context, product) {
    Navigator.of(context).pushNamed("DataPassScreen2", arguments: product);
  }
}
