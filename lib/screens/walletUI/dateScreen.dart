import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/walletUI/invoicenumberScreen.dart';
import 'package:p3profileui/screens/walletUI/upload_screen_waletUI.dart';

class DateScreenWalletUI extends StatelessWidget {
  const DateScreenWalletUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding),
            CustomIconButton1(
              icond: Icons.arrow_back_ios_new_rounded,
              ontap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: defaultPadding * 2),
            waletUICustomTitle1(titleheading: "Select Invoice Date"),
            SizedBox(height: defaultPadding),
            waletUIcustomtextfieldWithTrailindDate(
              hintText: "Eg: December 12, 2022",
            ),
            SizedBox(height: defaultPadding * 2),
            waletUICustomTitle1(titleheading: "Enter the Amount"),
            SizedBox(height: defaultPadding),
            waletUIcustomtextfield1(hintText: "Eg: 2500"),
            Center(
              child: Container(
                height: 360,
                width: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/walletui/layers.png"))),
              ),
            ),
            SizedBox(height: defaultPadding * 2),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WaletUICustomBackButton1(),
                  WalletUICustomButton1(
                    iconData: Icons.check_circle_outline_rounded,
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UploadScreenWaletUI()),
                      );
                    },
                    text: "Submmit ",
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class waletUIcustomtextfieldWithTrailindDate extends StatelessWidget {
  const waletUIcustomtextfieldWithTrailindDate({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(defaultBRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(defaultBRadius),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding * 1.1,
          ),
          suffixIcon: Icon(
            Icons.calendar_month_outlined,
            color: Colors.indigo.shade300,
          )),
    );
  }
}
