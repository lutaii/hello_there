// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

part of palette_generator;

class PaletteGeneratorCubit extends Cubit<PaletteGeneratorState> {
  final SavePaletteUseCase _useCase;

  PaletteGeneratorCubit(this._useCase)
      : super(
          PaletteGeneratorState(
            PaletteModel(
              colors: PaletteGenerator.random(),
            ),
          ),
        ) {
    _useCase.savePalette(super.state.paletteModel);
  }

  void generateNewPalette() {
    final paletteModel = PaletteModel(colors: PaletteGenerator.random());
    logger.d(
      'New palette was generated with hex codes\ntext: ${paletteModel.colors.textColor.hexCode()}\nbackground: ${paletteModel.colors.backgroundColor.hexCode()}',
    );
    _useCase.savePalette(paletteModel);
    emit(PaletteGeneratorState(paletteModel));
  }
}
