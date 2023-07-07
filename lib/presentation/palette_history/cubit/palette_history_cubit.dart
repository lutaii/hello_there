// ignore_for_file: public_member_api_docs

part of palette_history;

class PaletteHistoryCubit extends Cubit<PaletteHistoryState> {
  PaletteHistoryCubit(FetchPalettesUseCase useCase)
      : super(PaletteHistoryState(palettes: useCase.getAllPalettes())) {
    logger
        .d('There are ${useCase.getAllPalettes().length} palettes is history');
  }
}
