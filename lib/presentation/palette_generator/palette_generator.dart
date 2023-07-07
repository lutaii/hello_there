library palette_generator;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hello_there/common/constants.dart';
import 'package:hello_there/common/extensions/color_hex_code.dart';
import 'package:hello_there/common/generators/palette_generator.dart';
import 'package:hello_there/common/logger.dart';
import 'package:hello_there/data/repositories/palettes_repository.dart';
import 'package:hello_there/di/provider_manager.dart';
import 'package:hello_there/domain/models/palette_model.dart';
import 'package:hello_there/domain/use_cases/save_palette_use_case.dart';
import 'package:hello_there/presentation/palette_history/palette_history.dart';

part 'cubit/palette_generator_cubit.dart';
part 'cubit/palette_generator_state.dart';
part 'widgets/palette_generator_screen.dart';
