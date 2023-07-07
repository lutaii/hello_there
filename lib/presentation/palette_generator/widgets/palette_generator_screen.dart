// ignore_for_file: public_member_api_docs

part of palette_generator;

class PaletteGeneratorScreen extends StatefulWidget {
  const PaletteGeneratorScreen({Key? key}) : super(key: key);

  @override
  State<PaletteGeneratorScreen> createState() => _PaletteGeneratorScreenState();
}

class _PaletteGeneratorScreenState extends State<PaletteGeneratorScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<PaletteGeneratorCubit>(
        create: (_) => PaletteGeneratorCubit(
          SavePaletteUseCase(repository: getIt<PalettesRepository>()),
        ),
        child: Builder(
          builder: (context) {
            final cubit = context.watch<PaletteGeneratorCubit>();

            return GestureDetector(
              onTap: () {
                cubit.generateNewPalette();
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                color: cubit.state.paletteModel.colors.backgroundColor,
                child: Center(
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: TextStyle(
                      fontSize: Constants.textFontSize,
                      color: cubit.state.paletteModel.colors.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                    child: Text(
                      AppLocalizations.of(context)?.hello_there ?? '',
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.list_alt),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PaletteHistoryScreen(),
            ),
          );
        },
      ),
    );
  }
}
