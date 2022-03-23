import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yts_bloc_2021/app/app.dart';
import 'package:yts_bloc_2021/app/bloc_observer.dart';
import 'package:yts_bloc_2021/app_setup/hive/hive_setup.dart';
import 'package:yts_bloc_2021/flavor_config.dart';

void mainCommon(FlavorConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveSetup.initHive();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  BlocOverrides.runZoned(
    () {
      runApp(
        App(
          config: config,
        ),
      );
      BlocOverrides.current;
    },
    blocObserver: MovieBlocObserver(),
  );
}
