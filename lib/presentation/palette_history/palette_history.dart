library palette_history;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hello_there/common/constants.dart';
import 'package:hello_there/common/extensions/color_hex_code.dart';
import 'package:hello_there/common/logger.dart';
import 'package:hello_there/data/repositories/palettes_repository.dart';
import 'package:hello_there/di/provider_manager.dart';
import 'package:hello_there/domain/models/palette_model.dart';
import 'package:hello_there/domain/use_cases/fetch_palettes_use_case.dart';
import 'package:hello_there/presentation/palette_history/cubit/palette_history_state.dart';

part 'cubit/palette_history_cubit.dart';
part 'widgets/hex_code_button.dart';
part 'widgets/palette_history_screen.dart';
part 'widgets/palette_history_widget.dart';
