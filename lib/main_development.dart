import 'package:flutter/material.dart';
import 'package:yts_bloc_2021/flavor_config.dart';
import 'package:yts_bloc_2021/main.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';

void main() {
  final config = FlavorConfig()
    ..appTitle = '[DEV] YTS'
    ..appcolor = Colors.purple;

  mainCommon(config);
}
