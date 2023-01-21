import 'package:flutter/material.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/Music%20player/music_playerX11.dart';

class MusicPlayerX12 extends StatelessWidget {
  const MusicPlayerX12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlayListScreenMusicPlayer(),
      ),
    );
  }
}
