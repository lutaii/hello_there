// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

extension ColorHexCode on Color {
  String hexCode() {
    return value.toRadixString(radix16).substring(hexColorSubstringCount);
  }
}

const radix16 = 16;
const hexColorSubstringCount = 2;
