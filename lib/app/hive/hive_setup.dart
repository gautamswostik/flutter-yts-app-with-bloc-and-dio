import 'dart:developer';
import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveSetup {
  static Future initHive() async {
    try {
      final ytsdatadirectory = await databasePath;
      Hive.initFlutter(ytsdatadirectory);
    } catch (e) {
      log('$e this error happened');
    }
  }
}

const String _dbDirectory = "yts";

Future<String> get databasePath async {
  final directory = await getApplicationDocumentsDirectory();
  final dbDir = Directory('${directory.path}/$_dbDirectory');
  return dbDir.path;
}
