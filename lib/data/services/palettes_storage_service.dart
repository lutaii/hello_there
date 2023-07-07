// ignore_for_file: public_member_api_docs

import 'package:hello_there/common/logger.dart';
import 'package:hello_there/data/box_names.dart';
import 'package:hello_there/data/entities/palette_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract interface class PalettesStorageService {
  List<PaletteEntity> getAll();

  void save(PaletteEntity paletteEntity);
}

class PalettesStorageServiceImpl implements PalettesStorageService {
  final Box<dynamic> _box = Hive.box(BoxNames.palette);

  @override
  List<PaletteEntity> getAll() => _box.values.cast<PaletteEntity>().toList();

  @override
  void save(PaletteEntity paletteEntity) {
    _box.add(paletteEntity);
    logger.d('Palette was saved to Hive box with name: ${BoxNames.palette}');
  }
}
