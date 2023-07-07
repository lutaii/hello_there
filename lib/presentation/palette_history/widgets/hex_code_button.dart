// ignore_for_file: public_member_api_docs

part of palette_history;

class HexCodeButton extends StatelessWidget {
  const HexCodeButton({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Clipboard.setData(ClipboardData(text: color.hexCode()));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)
                      ?.snackbar_copy_to_clipboard_text(color.hexCode()) ??
                  '',
            ),
          ),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: const Icon(
              Icons.color_lens,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: Constants.historyButtonSpace),
          Text(color.hexCode()),
        ],
      ),
    );
  }
}
