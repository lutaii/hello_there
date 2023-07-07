// ignore_for_file: public_member_api_docs

import 'package:hive/hive.dart';

part 'palette_entity.g.dart';

@HiveType(typeId: 1)
class PaletteEntity {
  @HiveField(0)
  int textColorValue;

  @HiveField(1)
  int backgroundColorValue;

  PaletteEntity({
    required this.textColorValue,
    required this.backgroundColorValue,
  });
}
