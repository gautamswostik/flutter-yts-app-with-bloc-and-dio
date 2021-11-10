import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yts_bloc_2021/app/app.dart';
import 'package:yts_bloc_2021/app/bloc_observer.dart';
import 'package:yts_bloc_2021/flavor_config.dart';

void mainCommon(FlavorConfig config) async {
  Bloc.observer = MoviesBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    App(
      config: config,
    ),
  );
}
