import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';

class CarouselAppUI3 extends StatelessWidget {
  const CarouselAppUI3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            title: Text("Sliver app bar 2"),
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 50,
                color: Colors.red.shade100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    // physics: NeverScrollableScrollPhysics(),

                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 50,
                        color: Colors.red.shade100,
                        child: Text(" ytfy"),
                      );
                    }),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
