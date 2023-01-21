import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';

class BttonSheetScreen extends StatelessWidget {
  const BttonSheetScreen({super.key});

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 10,
      builder: (context) => Container(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom sheet screen"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Center(
              child: smallButton(
                buttontext: "click here to see bottom sheet",
              ),
            ),
          ],
        )));
  }
}

class smallButton extends StatelessWidget {
  const smallButton({
    Key? key,
    required this.buttontext,
    this.onButtonTap,
    this.OnButtonHold,
  }) : super(key: key);
  final String buttontext;
  final VoidCallback? onButtonTap;
  final VoidCallback? OnButtonHold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding, horizontal: defaultPadding * 2),
      child: GestureDetector(
        onTap: onButtonTap,
        onLongPress: OnButtonHold,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding * 2),
            child: Text(buttontext),
          ),
          decoration: BoxDecoration(
              color: grey1,
              borderRadius: BorderRadius.circular(defaultBRadius)),
        ),
      ),
    );
  }
}

// GestureDetector(
//           onLongPress: () => showBottomSheet(context),
//           child: Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: Container(
//                 color: grey1,
//                 padding: EdgeInsets.symmetric(
//                     vertical: defaultPadding, horizontal: defaultPadding * 2),
//                 child: Text("Click and hold to see bottom sheet")),
//           ),
//         ),