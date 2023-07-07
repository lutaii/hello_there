// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hello_there/common/logger.dart';
import 'package:hello_there/presentation/palette_generator/palette_generator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: PaletteGeneratorScreen(),
    );
  }
}
