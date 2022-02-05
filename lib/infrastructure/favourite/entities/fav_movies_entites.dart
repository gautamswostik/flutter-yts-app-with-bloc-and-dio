import 'package:hive_flutter/hive_flutter.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_torrent.dart';

part 'fav_movies_entites.g.dart';

@HiveType(typeId: 0)
class FavMovies extends HiveObject {
  @HiveField(0)
  final num id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String posterBackground;
  @HiveField(3)
  final String poster;
  @HiveField(4)
  final String ytcode;
  @HiveField(5)
  final List<String> genres;
  @HiveField(6)
  final String description;
  @HiveField(7)
  final num rating;
  @HiveField(8)
  final String imdbcode;
  @HiveField(9)
  final List<TorrentLocal> torrents;
  @HiveField(10)
  final String largeCoverImage;

  FavMovies({
    required this.id,
    required this.title,
    required this.posterBackground,
    required this.poster,
    required this.ytcode,
    required this.genres,
    required this.description,
    required this.rating,
    required this.imdbcode,
    required this.torrents,
    required this.largeCoverImage,
  });
}
