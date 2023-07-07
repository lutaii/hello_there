// ignore_for_file: public_member_api_docs

import 'package:hello_there/data/mappers/palette_mapper.dart';
import 'package:hello_there/data/services/palettes_storage_service.dart';

import 'package:hello_there/domain/models/palette_model.dart';

abstract interface class PalettesRepository {
  void save(PaletteModel paletteModel);

  List<PaletteModel> getAll();
}

class PalleteRepositoryImpl implements PalettesRepository {
  final PalettesStorageService _service;

  PalleteRepositoryImpl({required PalettesStorageService service})
      : _service = service;

  @override
  List<PaletteModel> getAll() {
    return _service
        .getAll()
        .map((entity) => PaletteMapper.mapEntityToModel(entity))
        .toList();
  }

  @override
  void save(PaletteModel paletteModel) {
    _service.save(PaletteMapper.mapModelToEntity(paletteModel));
  }
}
