// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hello_there/data/entities/palette_entity.dart';

import 'package:hello_there/domain/models/palette_model.dart';

class PaletteMapper {
  static PaletteModel mapEntityToModel(PaletteEntity entity) {
    return PaletteModel(
      colors: (
        textColor: Color(entity.textColorValue),
        backgroundColor: Color(entity.backgroundColorValue)
      ),
    );
  }

  static PaletteEntity mapModelToEntity(PaletteModel model) {
    return PaletteEntity(
      textColorValue: model.colors.textColor.value,
      backgroundColorValue: model.colors.backgroundColor.value,
    );
  }
}
