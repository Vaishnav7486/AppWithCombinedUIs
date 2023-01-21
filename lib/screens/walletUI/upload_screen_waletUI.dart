import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/walletUI/invoicenumberScreen.dart';

class UploadScreenWaletUI extends StatefulWidget {
  const UploadScreenWaletUI({super.key});

  @override
  State<UploadScreenWaletUI> createState() => _UploadScreenWaletUIState();
}

class _UploadScreenWaletUIState extends State<UploadScreenWaletUI> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(child: screenList[selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.indigo.shade300,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
                print(selectedIndex);
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.home_24_regular), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.grid_circles_24_regular),
                  label: "View"),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.gift_24_regular), label: "Rewards"),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.person_24_regular), label: "Profile"),
            ]),
      ),
    );
  }
}

class RewardSelectionRow extends StatefulWidget {
  const RewardSelectionRow({
    Key? key,
  }) : super(key: key);

  @override
  State<RewardSelectionRow> createState() => _RewardSelectionRowState();
}

class _RewardSelectionRowState extends State<RewardSelectionRow> {
  @override
  Widget build(BuildContext context) {
    bool selection = false;
    int selectionIndex = 0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: List.generate(
            rewardsOption.length,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectionIndex = index;
                      print(selectionIndex);
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.only(
                          right: defaultPadding,
                          top: defaultPadding,
                          bottom: defaultPadding),
                      padding: EdgeInsets.symmetric(
                          vertical: defaultPadding / 2,
                          horizontal: defaultPadding),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius:
                              BorderRadius.circular(defaultBRadius / 1.5)),
                      child: Text(
                        rewardsOption[index],
                        style: TextStyle(
                            color: index == selectionIndex
                                ? Colors.indigo.shade400
                                : Colors.black),
                      )),
                )),
      ),
    );
  }
}

class CoinsAndCartImageRow extends StatelessWidget {
  const CoinsAndCartImageRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          Column(
            children: [
              TotalBalanceBox(),
              SizedBox(height: defaultPadding / 2),
              CoinsAndCart(),
            ],
          ),
          Flexible(
            child: Container(
              height: 180,
              // width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/walletui/shoppingcart.png"))),
            ),
          )
        ],
      ),
    );
  }
}

class CoinsAndCart extends StatelessWidget {
  const CoinsAndCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          // color: Colors.amber.shade100,
          borderRadius: BorderRadius.circular(defaultBRadius)),
      child: Row(
        children: [
          RedeemableCoinsContainer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            height: 60,
            width: 1,
            color: Colors.grey.shade400,
          ),
          ExpiredCoinsContainer(),
        ],
      ),
    );
  }
}

class ExpiredCoinsContainer extends StatelessWidget {
  const ExpiredCoinsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(left: defaultPadding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Expired         Coins",
            style: TextStyle(
                color: Colors.grey.shade600, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding / 3),
          Row(
            children: [
              Text(
                "7,850",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: defaultFontSize * 1.2,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(width: defaultPadding / 3),
              SizedBox(
                height: 20,
                width: 20,
                child:
                    Image(image: AssetImage("assets/images/walletui/coin.png")),
              )
            ],
          )
        ],
      ),
    ));
  }
}

class RedeemableCoinsContainer extends StatelessWidget {
  const RedeemableCoinsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(left: defaultPadding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Redeemable coins",
            style: TextStyle(
                color: Colors.grey.shade600, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding / 3),
          Row(
            children: [
              Text(
                "12,000",
                style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: defaultFontSize * 1.2,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(width: defaultPadding / 3),
              SizedBox(
                height: 20,
                width: 20,
                child:
                    Image(image: AssetImage("assets/images/walletui/coin.png")),
              )
            ],
          )
        ],
      ),
    ));
  }
}

class TotalBalanceBox extends StatelessWidget {
  const TotalBalanceBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/walletui/rectanglegr1.png")),
        borderRadius: BorderRadius.circular(defaultBRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Total Balance",
            style: TextStyle(
                color: Colors.white,
                fontSize: defaultFontSize,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding / 3),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "14,325",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: defaultFontSize * 2,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: defaultPadding / 2),
              SizedBox(
                height: 30,
                width: 30,
                child:
                    Image(image: AssetImage("assets/images/walletui/coin.png")),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class RewardWalletBackButton extends StatelessWidget {
  const RewardWalletBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: RichText(
          text: TextSpan(children: [
            WidgetSpan(
                child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: defaultFontSize * 1.3,
              color: Colors.indigo.shade300,
            )),
            TextSpan(
                text: "  Rewards Wallet",
                style: TextStyle(
                    color: Colors.indigo.shade400,
                    fontSize: defaultFontSize * 1.1))
          ]),
        ),
      ),
    );
  }
}

List rewardsOption = ["All", "DirectRewards", "Indirect Rewards"];
List<Map> orderCardList = [
  {
    "id": "26",
    "orderID": 6464646644,
    "validityDate": "Dec 31,2022",
  },
  {
    "id": "02",
    "orderID": 5684598562,
    "validityDate": "Jan 12,2023",
  },
  {
    "id": "31",
    "orderID": 1225485687,
    "validityDate": "Jan 15,2023",
  },
  {
    "id": "52",
    "orderID": 4568951245,
    "validityDate": "Jan 27,2023",
  },
  {
    "id": "14",
    "orderID": 1225487956,
    "validityDate": "Feb 01,2023",
  },
  {
    "id": "12",
    "orderID": 8456984567,
    "validityDate": "Feb 15,2023",
  },
  {
    "id": "09",
    "orderID": 7598463254,
    "validityDate": "Feb 18,2023",
  },
  {
    "id": "48",
    "orderID": 3256485987,
    "validityDate": "Feb 31,2023",
  },
];

List<Widget> screenList = [
  Center(child: Text("Home")),
  Center(child: Text("More")),
  RewardScreen(),
  Column(
    children: [
      Container(
        // height: 450,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(defaultBRadius * 2),
                bottomRight: Radius.circular(defaultBRadius * 2))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton1(
                    ontap: () {}, icond: Icons.arrow_back_ios_new_rounded),
                Text("Account"),
                SizedBox(
                  height: 40,
                  width: 40,
                )
              ],
            ),
            SizedBox(height: defaultPadding),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(defaultBRadius * 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://image.cnbcfm.com/api/v1/image/106806367-1607089945571-gettyimages-1229901929-GERMANY_MUSK.jpeg?v=1626980524&w=720&h=405"))),
            ),
            SizedBox(height: defaultPadding),
            Text(
              "Dennis Callis",
              style: TextStyle(
                  fontSize: defaultFontSize * 1.2, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.indigo.shade300,
                ),
                Text("dennisSomeperson@gmail.com")
              ],
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.indigo.shade300,
                ),
                Text("+91 54854 69875")
              ],
            ),
            SizedBox(height: defaultPadding),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: defaultPadding / 2, horizontal: defaultPadding),
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: Colors.indigo.shade300,
                  borderRadius: BorderRadius.circular(defaultBRadius / 2)),
            ),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
      SizedBox(height: defaultPadding),
      // ListTile(
      //   leading: Icon(
      //     Icons.wallet,
      //     color: Colors.indigo.shade300,
      //   ),
      //   title: Text("My Wallet"),
      //   trailing: Icon(
      //     Icons.arrow_forward_ios_rounded,
      //     color: Colors.indigo.shade300,
      //   ),
      // ),
      customListTile1(
        icond: Icons.wallet,
        text: 'My Wallet',
      ),
      SizedBox(height: defaultPadding / 2),
      customListTile1(
        icond: Icons.note,
        text: 'Terms & Policies',
      ),
      SizedBox(height: defaultPadding / 2),
      customListTile1(
        icond: Icons.info_rounded,
        text: 'About',
      ),
      SizedBox(height: defaultPadding / 2),
      customListTile1(
        icond: Icons.logout,
        text: 'Log Out',
      ),
      SizedBox(height: defaultPadding / 2),
    ],
  ),
];

class customListTile1 extends StatelessWidget {
  const customListTile1({
    Key? key,
    required this.icond,
    required this.text,
  }) : super(key: key);

  final IconData icond;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Icon(
              icond,
              color: Colors.indigo.shade300,
            ),
          ),
          Expanded(child: Text(text)),
          SizedBox(
            height: 50,
            width: 50,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.indigo.shade300,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200, width: 1),
          borderRadius: BorderRadius.circular(defaultBRadius)),
    );
  }
}

class RewardScreen extends StatelessWidget {
  const RewardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding * 1.5),
        RewardWalletBackButton(),
        SizedBox(height: defaultPadding * 1.5),
        CoinsAndCartImageRow(),
        SizedBox(height: defaultPadding * 1.5),
        DefaultTabController(length: 2, child: Container()),
        SizedBox(
          height: 55,
          child: AppBar(
            elevation: 0.3,
            bottom: TabBar(
                indicatorWeight: 4,
                indicatorColor: Colors.indigo.shade300,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FluentIcons.gift_24_regular,
                          color: Colors.indigo.shade300,
                        ),
                        SizedBox(width: defaultPadding / 2),
                        Text(
                          "Rewards",
                          style: TextStyle(color: Colors.indigo.shade300),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FluentIcons.receipt_24_regular,
                          color: Colors.indigo.shade300,
                        ),
                        SizedBox(width: defaultPadding / 2),
                        Text(
                          "Transactions",
                          style: TextStyle(color: Colors.indigo.shade300),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
        Expanded(
            child: TabBarView(children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RewardSelectionRow(),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: orderCardList.length,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(bottom: defaultPadding / 2),
                          padding: EdgeInsets.symmetric(
                              vertical: defaultPadding / 1.5,
                              horizontal: defaultPadding),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(defaultBRadius)),
                          child: Row(
                            children: [
                              Text(
                                orderCardList[index]["id"],
                                style: TextStyle(
                                    color: Colors.blue.shade600,
                                    fontSize: defaultFontSize * 2,
                                    fontWeight: FontWeight.w600),
                              ),
                              Expanded(
                                  child: Text(
                                "Order ID - ${orderCardList[index]["orderID"].toString()}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              Column(
                                children: [
                                  Text(
                                    "Valid Till",
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  Text(
                                    orderCardList[index]["validityDate"],
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
              ],
            ),
          ),
          Center(child: Text("Transactions"))
        ])),
      ],
    );
  }
}
