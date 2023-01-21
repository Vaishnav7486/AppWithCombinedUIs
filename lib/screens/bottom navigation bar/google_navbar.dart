import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GNavBarScreen extends StatefulWidget {
  const GNavBarScreen({super.key});

  @override
  State<GNavBarScreen> createState() => _GNavBarScreenState();
}

class _GNavBarScreenState extends State<GNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G nav bar"),
        elevation: 0,
        toolbarHeight: 65,
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
