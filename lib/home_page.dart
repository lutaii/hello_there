import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_there/constants.dart';

/// hello_there application home page widget
class HomePage extends StatefulWidget {
  /// home page constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var palette = generatedRandomPalette();

    return MaterialApp(
      home: Material(
        child: GestureDetector(
          onTap: () => setState(() {
            palette = generatedRandomPalette();
          }),
          child: ColoredBox(
            color: palette.backgroundColor,
            child: Center(
              child: Text(
                'Hello there',
                style: TextStyle(
                  fontSize: Constants.textFontSize,
                  color: palette.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ({Color textColor, Color backgroundColor}) generatedRandomPalette() {
    final random = Random();

    return (
      textColor: Color.fromRGBO(
        random.nextInt(Constants.rgbValue),
        random.nextInt(Constants.rgbValue),
        random.nextInt(Constants.rgbValue),
        1,
      ),
      backgroundColor: Color.fromRGBO(
        random.nextInt(Constants.rgbValue),
        random.nextInt(Constants.rgbValue),
        random.nextInt(Constants.rgbValue),
        1,
      ),
    );
  }
}
