// ignore_for_file: public_member_api_docs

import 'package:hello_there/data/repositories/palettes_repository.dart';
import 'package:hello_there/domain/models/palette_model.dart';

class SavePaletteUseCase {
  final PalettesRepository repository;

  SavePaletteUseCase({required this.repository});

  void savePalette(PaletteModel paletteModel) {
    repository.save(paletteModel);
  }
}
