// ignore_for_file: public_member_api_docs

import 'package:get_it/get_it.dart';
import 'package:hello_there/data/repositories/palettes_repository.dart';

import 'package:hello_there/data/services/palettes_storage_service.dart';

final GetIt getIt = GetIt.asNewInstance();

class ProviderManager {
  void configureDependencies(
    GetIt getIt,
  ) {
    registerStorageService(getIt);
    registerRepository(getIt);
  }

  void registerStorageService(GetIt getIt) {
    getIt.registerSingleton<PalettesStorageService>(
      PalettesStorageServiceImpl(),
    );
  }

  void registerRepository(GetIt getIt) {
    getIt.registerSingleton<PalettesRepository>(
      PalleteRepositoryImpl(service: getIt<PalettesStorageService>()),
    );
  }
}
