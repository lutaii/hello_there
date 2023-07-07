// ignore_for_file: public_member_api_docs

import 'package:hello_there/data/box_names.dart';
import 'package:hello_there/data/entities/palette_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveInjector {
  static Future<void> setup() async {
    await Hive.initFlutter();
    _registerAdapters();
    await Hive.openBox(BoxNames.palette);
  }

  static void _registerAdapters() {
    Hive.registerAdapter(PaletteEntityAdapter());
  }
}
