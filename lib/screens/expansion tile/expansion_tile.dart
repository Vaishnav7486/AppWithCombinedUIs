import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
// import 'package:getwidget/getwidget,dart';

class ExpansionTileUI1 extends StatelessWidget {
  const ExpansionTileUI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Expansion tile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                  textColor: Colors.black,
                  // backgroundColor: Colors.blue,
                  // collapsedTextColor: Colors.amber,
                  leading: Icon(Icons.add),
                  title: Text("This is the title"),
                  subtitle: Text("subtitle text"),
                  children:
                      // ListTile(title: Text("List tile 1")),
                      // ListTile(title: Text("List tile 2")),
                      // ListTile(title: Text("List tile 3")),
                      // ListTile(title: Text("List tile 4")),
                      // ListTile(title: Text("List tile 5")),
                      List.generate(
                          5,
                          (index) => ListTile(
                                tileColor: Colors.red.shade100,
                                title: Text("this $index"),
                              ))),
              ExpansionTile(
                  textColor: Colors.black,
                  // backgroundColor: Colors.blue,
                  // collapsedTextColor: Colors.amber,
                  leading: Icon(Icons.add),
                  title: Text("This is the title"),
                  subtitle: Text("subtitle text"),
                  children:
                      // ListTile(title: Text("List tile 1")),
                      // ListTile(title: Text("List tile 2")),
                      // ListTile(title: Text("List tile 3")),
                      // ListTile(title: Text("List tile 4")),
                      // ListTile(title: Text("List tile 5")),
                      List.generate(
                          5,
                          (index) => ListTile(
                                tileColor: Colors.red.shade300,
                                title: Text("this $index"),
                              ))),
              ExpansionTileCard(
                  // key: cardA,
                  elevation: 0.5,
                  initialPadding:
                      EdgeInsets.symmetric(horizontal: defaultPadding),
                  finalPadding:
                      EdgeInsets.symmetric(horizontal: defaultPadding),
                  title: Text("this is the title"),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 1.5,
                          vertical: defaultPadding),
                      child: Column(
                        children: [
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.add),
                              Icon(Icons.share),
                              Icon(Icons.search),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
              ExpansionTile(
                leading: Container(
                  constraints: BoxConstraints(
                      minHeight: 80, minWidth: 80, maxHeight: 80, maxWidth: 80),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1657632843433-e6a8b7451ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'))),
                ),
                title: Text("With image"),
              ),
              SizedBox(height: 80),
              customExpandedTile1(),
              SizedBox(height: 20),
              //
              //
              //
              CustomAnimatedExpansion(),
              //
              //
              //
              SizedBox(height: 20),
              //
              //
              //
              CustomAnimatedExpansion2(
                boxheight: 120,
              ),
              //
              //
              //
              SizedBox(height: 100),
              AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                height: 80,
                width: MediaQuery.of(context).size.width,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1657632843433-e6a8b7451ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAnimatedExpansion2 extends StatefulWidget {
  CustomAnimatedExpansion2({
    Key? key,
    required this.boxheight, this.child,
  }) : super(key: key);

  final double boxheight;
  final Widget? child;

  @override
  State<CustomAnimatedExpansion2> createState() =>
      _CustomAnimatedExpansion2State();
}

class _CustomAnimatedExpansion2State extends State<CustomAnimatedExpansion2> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      duration: Duration(milliseconds: 100),
      // height: !expanded ? 80 : 200,
      // height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(defaultBRadius / 2),
      ),
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: defaultPadding),
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultBRadius / 2),
                // color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1657632843433-e6a8b7451ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
            child: Row(
              children: [
                Container(
                  // color: Colors.red.shade100,
                  width: 40,
                ),
                Expanded(
                    child: Container(
                  child: Text(
                    "TITLE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  // color: Colors.red.shade200,
                )),
                Container(
                    // color: Colors.red.shade300,
                    width: 40,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            expanded = !expanded;
                          });
                        },
                        icon: !expanded
                            ? Icon(
                                Icons.expand_more,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.expand_less,
                                color: Colors.white,
                              ))),
              ],
            ),
          ),
          Visibility(
            // visible: !expanded ? false : true,
            child: Container(
                // height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultPadding / 2),
                    bottomRight: Radius.circular(defaultPadding / 2),
                  ),
                ),
                child: expanded
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(defaultPadding / 2),
                              bottomRight: Radius.circular(defaultPadding / 2),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(0, 1),
                                  blurRadius: 5)
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 400,
                            )
                          ],
                        ),
                      )
                    : null),
          ),
        ],
      ),
    );
  }
}

class CustomAnimatedExpansion extends StatefulWidget {
  CustomAnimatedExpansion({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAnimatedExpansion> createState() =>
      _CustomAnimatedExpansionState();
}

class _CustomAnimatedExpansionState extends State<CustomAnimatedExpansion> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      duration: Duration(milliseconds: 500),
      height: !expanded ? 80 : 200,
      // height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(defaultBRadius / 2),
      ),
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: defaultPadding),
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultBRadius / 2),
                // color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1657632843433-e6a8b7451ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
            child: Row(
              children: [
                Container(
                  // color: Colors.red.shade100,
                  width: 40,
                ),
                Expanded(
                    child: Container(
                        // color: Colors.red.shade200,
                        )),
                Container(
                    // color: Colors.red.shade300,
                    width: 40,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            expanded = !expanded;
                          });
                        },
                        icon: !expanded
                            ? Icon(
                                Icons.expand_more,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.expand_less,
                                color: Colors.white,
                              ))),
              ],
            ),
          ),
          Visibility(
            visible: !expanded ? false : true,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(defaultPadding / 2),
                  bottomRight: Radius.circular(defaultPadding / 2),
                ),
              ),
              // child:
              //  Container(
              //   height: 200,
              //   color: Colors.amber.shade100,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class customExpandedTile1 extends StatefulWidget {
  customExpandedTile1({
    Key? key,
  }) : super(key: key);

  @override
  State<customExpandedTile1> createState() => _customExpandedTile1State();
}

class _customExpandedTile1State extends State<customExpandedTile1> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding / 3),
          height: !expanded ? 100 : 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding / 2),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1657632843433-e6a8b7451ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
          child: Container(),
        ),
        Positioned(
            top: 25,
            right: 10,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                icon: Icon(
                  Icons.expand_more,
                  color: Colors.white,
                )))
      ],
    );
  }
}
