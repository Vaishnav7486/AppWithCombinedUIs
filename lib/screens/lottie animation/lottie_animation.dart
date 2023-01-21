import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationScreen extends StatefulWidget {
  const LottieAnimationScreen({super.key});

  @override
  State<LottieAnimationScreen> createState() => _LottieAnimationScreenState();
}

class _LottieAnimationScreenState extends State<LottieAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            height: 200,
            width: 200,
            'https://assets4.lottiefiles.com/packages/lf20_u5hmelhh.json'),
      ),
    );
  }
}
