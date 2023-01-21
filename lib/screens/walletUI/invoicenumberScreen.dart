import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/walletUI/dateScreen.dart';

class InvoiceNumberScreen extends StatelessWidget {
  const InvoiceNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        // height: double.infinity,
        // width: double.infinity,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: AssetImage("assets/images/walletui/gradientbg.png"))),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: defaultPadding),
              CustomIconButton1(
                icond: Icons.arrow_back_ios_new_rounded,
                ontap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: defaultPadding * 2),
              waletUICustomTitle1(
                titleheading: "Enter the invoice number",
              ),
              SizedBox(height: defaultPadding),
              waletUIcustomtextfield1(
                hintText: "Eg: 68459 54854",
              ),
              SizedBox(height: defaultPadding * 3),
              Center(
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/walletui/layers.png"))),
                ),
              ),
              SizedBox(height: defaultPadding * 4),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WaletUICustomBackButton1(),
                    WalletUICustomButton1(
                      iconData: Icons.arrow_forward_ios_rounded,
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DateScreenWalletUI()),
                        );
                      },
                      text: "Next",
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
      // bottomNavigationBar:
    );
  }
}

class WalletUICustomButton1 extends StatelessWidget {
  const WalletUICustomButton1({
    Key? key,
    required this.ontap,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  final VoidCallback ontap;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(defaultBRadius / 1.5)),
        child: Center(
            child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: defaultFontSize,
                    fontWeight: FontWeight.w500),
              ),
              WidgetSpan(
                child: Icon(
                  iconData,
                  size: defaultFontSize * 1.1,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class WaletUICustomBackButton1 extends StatelessWidget {
  const WaletUICustomBackButton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBRadius / 1.5)),
        child: Center(
            child: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: defaultFontSize * 1.1,
                  color: Colors.indigo.shade500,
                ),
              ),
              TextSpan(
                text: " Back",
                style: TextStyle(
                    color: Colors.indigo.shade400,
                    fontSize: defaultFontSize,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class waletUIcustomtextfield1 extends StatelessWidget {
  const waletUIcustomtextfield1({
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
        // border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(defaultBRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(defaultBRadius),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding * 1.1),
      ),
    );
  }
}

class waletUICustomTitle1 extends StatelessWidget {
  const waletUICustomTitle1({
    Key? key,
    required this.titleheading,
  }) : super(key: key);
  final String titleheading;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleheading,
      style: TextStyle(
          color: Colors.indigo.shade400,
          fontSize: defaultFontSize * 1.1,
          fontWeight: FontWeight.w500),
    );
  }
}

class CustomIconButton1 extends StatelessWidget {
  const CustomIconButton1({
    Key? key,
    required this.ontap,
    required this.icond,
  }) : super(key: key);

  final VoidCallback ontap;
  final IconData icond;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(defaultBRadius),
          border: Border.all(color: Colors.indigo.shade200),
        ),
        child: Center(
          child: Icon(
            icond,
            color: Colors.indigo.shade300,
          ),
        ),
      ),
    );
  }
}
