import 'package:casualgame/menu.dart';
import 'package:flutter/material.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return FlameSplashScreen(
      // showBefore: (BuildContext context) {
      //   return const Text('Before logo');
      // },
      // showAfter: (BuildContext context) {
      //   return const Text('After logo');
      // },
      theme: FlameSplashTheme.dark,
      onFinish: (context) => Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute(builder: (context) => const Menu()),
      ),
    );
  }
}