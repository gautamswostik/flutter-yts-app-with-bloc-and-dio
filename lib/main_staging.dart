import 'package:flutter/material.dart';
import 'package:yts_bloc_2021/flavor_config.dart';
import 'package:yts_bloc_2021/main.dart';

void main() {
  final config = FlavorConfig()
    ..appTitle = '[DEV] YTS'
    ..appcolor = Colors.white;

    mainCommon(config);
}
