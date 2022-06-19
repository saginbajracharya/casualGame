import 'package:bonfire/bonfire.dart';
import 'package:casualgame/splash.dart';
import 'package:casualgame/top_down_game/top_down_game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopDownGame(),
    ),
  );
}
