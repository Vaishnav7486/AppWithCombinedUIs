import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackPressAndAlert extends StatelessWidget {
  const BackPressAndAlert({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: Text("Exit?"),
                content: Text("Are you sure you want to exit the screen ?"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text("NO")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text("YES"))
                ],
              ));
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Show alert"),
        ),
      ),
    );
  }
}
