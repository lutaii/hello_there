// ignore_for_file: public_member_api_docs

part of palette_history;

class PaletteHistoryWidget extends StatelessWidget {
  const PaletteHistoryWidget({required this.palette, super.key});

  final PaletteModel palette;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: Constants.paletteExampleHeight,
              width: Constants.paletteExampleWidgth,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Constants.paletteExampleBorderRadius),
                color: palette.colors.backgroundColor,
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)?.hello ?? '',
                  style: TextStyle(
                    color: palette.colors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: Constants.paletteExampleTextSize,
                  ),
                ),
              ),
            ),
            HexCodeButton(color: palette.colors.textColor),
            HexCodeButton(color: palette.colors.backgroundColor),
          ],
        );
      },
    );
  }
}
