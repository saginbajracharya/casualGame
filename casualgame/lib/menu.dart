import 'package:casualgame/common/styles.dart';
import 'package:casualgame/simple_example/simple_example_game.dart';
import 'package:casualgame/top_down_game/top_down_game.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RichText(
              text: TextSpan(
                text: 'SUPER',
                style:titleText1,
                children: [
                  TextSpan(
                    text: ' 9',
                    style: titleText2,
                  ),
                ]
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          _buildButton(context, 'Start', () {
            _navTo(context, const TopDownGame());
          }),
          const SizedBox(
            height: 10,
          ),
          _buildButton(context, 'Exit', () {
            SystemNavigator.pop(); 
          }),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, VoidCallback onTap) {
    return Center(
      child: FButton(
        /// Turn on Neumorphism support
        isSupportNeumorphism: true,
        /// Configure highlight shadow
        highlightShadowColor: black.withOpacity(0.5),
        /// Configure dark shadows
        shadowColor: black.withOpacity(0.2),
        strokeColor: blue,
        strokeWidth: 3.0,
        width: 190,
        height: 60,
        text: label,
        alignment: Alignment.center,
        color: white,
        onPressed: onTap,
        corner: FCorner.all(28),
        style: buttonTextStyle,
      ),
    );
  }

  void _navTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}