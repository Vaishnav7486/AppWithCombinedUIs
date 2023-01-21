import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';
import 'package:p3profileui/screens/passing%20data%20between%20screens/dummydata_for_data_passing.dart';

class DataPassScreen2 extends StatelessWidget {
  const DataPassScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product =
        dummydataset1.firstWhere((index) => index["id"] == productId);
    // aa mapil koode search cheyyum by checking the id we got from previous page ie prodcutId - is this corresponds to the id in dummmy data set,if yes then the map value is stored to the 'product'
    // ee id-kk corresponding aayittulla alla values um product ilekku save aavum
    return Scaffold(
      appBar: AppBar(
        title: Text("Data is passed to here"),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ID= " + product["id"].toString()),
          Text(product["name"]),
          Text(product["description"]),
          Container(
            height: 120,
            width: 120,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(product["image"]))),
          )
        ],
      ),
    );
  }
}
