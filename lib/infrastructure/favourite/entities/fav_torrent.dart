import 'package:hive_flutter/hive_flutter.dart';

part 'fav_torrent.g.dart';

@HiveType(typeId: 1)
class TorrentLocal extends HiveObject {
  @HiveField(0)
  final String url;
  @HiveField(1)
  final String hash;
  @HiveField(2)
  final String quality;
  @HiveField(3)
  final String type;
  @HiveField(4)
  final int seeds;
  @HiveField(5)
  final int peers;
  @HiveField(6)
  final String size;
  @HiveField(7)
  final int sizeBytes;
  @HiveField(8)
  final String dateUploaded;

  TorrentLocal({
    required this.url,
    required this.hash,
    required this.quality,
    required this.type,
    required this.seeds,
    required this.peers,
    required this.size,
    required this.sizeBytes,
    required this.dateUploaded,
  });
}
