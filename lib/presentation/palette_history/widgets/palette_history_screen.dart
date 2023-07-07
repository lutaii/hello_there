// ignore_for_file: public_member_api_docs

part of palette_history;

class PaletteHistoryScreen extends StatelessWidget {
  const PaletteHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(AppLocalizations.of(context)?.palette_history_title ?? ''),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: BlocProvider<PaletteHistoryCubit>(
          create: (context) => PaletteHistoryCubit(
            FetchPalettesUseCase(repository: getIt<PalettesRepository>()),
          ),
          child: BlocBuilder<PaletteHistoryCubit, PaletteHistoryState>(
            builder: (context, history) {
              return ListView.builder(
                itemCount: history.palettes.length,
                itemBuilder: (context, index) {
                  final palette =
                      history.palettes[history.palettes.length - index - 1];

                  return SizedBox(
                    height: Constants.histoyItemHeight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      child: PaletteHistoryWidget(
                        palette: palette,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
