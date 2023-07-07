import 'package:flutter/material.dart';
import 'package:hello_there/data/injectors/hive_injector.dart';
import 'package:hello_there/di/provider_manager.dart';
import 'package:hello_there/home_page.dart';

Future<void> main() async {
  await HiveInjector.setup();

  ProviderManager().configureDependencies(getIt);

  runApp(const HomePage());
}
