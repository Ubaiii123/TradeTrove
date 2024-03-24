import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [Colors.white, Colors.cyan];

    const colorizeTextStyle = TextStyle(
      fontSize: 20.0,
      fontFamily: 'Lato',
    );

    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Kucing.png',
              color: Colors.white,
            ),
            SizedBox(
              width: 250.0,
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Selamat Datang Di Toko OLX ',
                    textStyle: colorizeTextStyle, 
                    colors: colorizeColors
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
