// ignore_for_file: public_member_api_docs

import 'package:hello_there/data/repositories/palettes_repository.dart';
import 'package:hello_there/domain/models/palette_model.dart';

class FetchPalettesUseCase {
  final PalettesRepository repository;

  FetchPalettesUseCase({required this.repository});

  List<PaletteModel> getAllPalettes() {
    return repository.getAll();
  }
}
