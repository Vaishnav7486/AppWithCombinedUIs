import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:p3profileui/constants/constants.dart';

class CarouselAppUI2 extends StatelessWidget {
  const CarouselAppUI2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            // floating: true,
            pinned: true,
            title: Text("Sliver app bar 2"),
            backgroundColor: Colors.green,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 200,
              width: 20,
              color: Colors.red.shade100,
            ),
            Text("Something"),
            // SliverToBoxAdapter(
            //   child: Container(
            //     child: ListView.builder(
            //         // physics: NeverScrollableScrollPhysics(),
            //         scrollDirection: Axis.horizontal,
            //         shrinkWrap: true,
            //         itemCount: 10,
            //         itemBuilder: (BuildContext context, int index) {
            //           return Container(
            //             width: 100,
            //             color: Colors.red.shade100,
            //             padding: EdgeInsets.all(defaultPadding),
            //             child: Text("List H $index"),
            //           );
            //         }),
            //   ),
            // ),
            // GridView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: 20,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3,
            //         crossAxisSpacing: defaultPadding,
            //         mainAxisSpacing: defaultPadding),
            //     itemBuilder: (BuildContext context, int index) {
            //       return Column(
            //         children: [
            //           Container(
            //             color: Colors.grey.shade100,
            //             height: 100,
            //           ),
            //           Text("Sampl text $index")
            //         ],
            //       );
            //     })

            SizedBox(height: 40),
            Container(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.red.shade100,
                      height: 20,
                      child: Text("this $index"),
                    );
                  }),
            ),
            SampleGridview()
          ])),
        ],
      ),
    );
  }
}

class SampleGridview extends StatelessWidget {
  const SampleGridview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
          itemCount: 20,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.5,
              crossAxisCount: 3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Text('This text $index')
              ],
            );
          }),
    );
  }
}
