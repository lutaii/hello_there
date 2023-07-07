// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hello_there/common/constants.dart';

class PaletteGenerator {
  static ({Color textColor, Color backgroundColor}) random() {
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
