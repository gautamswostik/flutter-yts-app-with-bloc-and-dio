import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class MoviesCollection with _$MoviesCollection {
  const factory MoviesCollection({
    @Default('') String status,
    @JsonKey(name: 'status_message') @Default('') String statusMessage,
    Data? data,
    @JsonKey(name: '@meta') Meta? meta,
  }) = _MoviesCollection;

  factory MoviesCollection.fromJson(Map<String, dynamic> json) =>
      _$MoviesCollectionFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'movie_count', defaultValue: -1) @Default(-1) int movieCount,
    @Default(-1) int limit,
    @JsonKey(name: 'page_number', defaultValue: -1) @Default(-1) int pageNumber,
    @Default(<Movies>[]) List<Movies> movies,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Movies with _$Movies {
  const factory Movies({
    @Default(-1) int id,
    @Default('') String url,
    @JsonKey(name: 'imdb_code', defaultValue: '') @Default('') String imdbCode,
    @Default('') String title,
    @JsonKey(name: 'title_english', defaultValue: '')
    @Default('')
        String titleEnglish,
    @JsonKey(name: 'title_long', defaultValue: '')
    @Default('')
        String titleLong,
    @Default('') String slug,
    @Default(-1) int year,
    @Default(0.0) double rating,
    @Default(-1) int runtime,
    @Default(<String>[]) List<String> genres,
    @Default('') String summary,
    @JsonKey(name: 'description_full', defaultValue: '')
    @Default('')
        String descriptionFull,
    @Default('') String synopsis,
    @JsonKey(name: 'yt_trailer_code', defaultValue: '')
    @Default('')
        String ytTrailerCode,
    @Default('') String language,
    @JsonKey(name: 'mpa_rating', defaultValue: '')
    @Default('')
        String mpaRating,
    @JsonKey(name: 'background_image', defaultValue: '')
    @Default('')
        String backgroundImage,
    @JsonKey(name: 'background_image_original', defaultValue: '')
    @Default('')
        String backgroundImageOriginal,
    @JsonKey(name: 'small_cover_image', defaultValue: '')
    @Default('')
        String smallCoverImage,
    @JsonKey(name: 'medium_cover_image', defaultValue: '')
    @Default('')
        String mediumCoverImage,
    @JsonKey(name: 'large_cover_image', defaultValue: '')
    @Default('')
        String largeCoverImage,
    @Default('') String state,
    @Default(<Torrents>[]) List<Torrents> torrents,
    @JsonKey(name: 'date_uploaded', defaultValue: '')
    @Default('')
        String dateUploaded,
    @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
    @Default(-1)
        int dateUploadedUnix,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

@freezed
class Torrents with _$Torrents {
  const factory Torrents({
    @Default('') String url,
    @Default('') String hash,
    @Default('') String quality,
    @Default('') String type,
    @Default(-1) int seeds,
    @Default(-1) int peers,
    @Default('') String size,
    @JsonKey(name: 'size_bytes', defaultValue: -1) @Default(-1) int sizeBytes,
    @JsonKey(name: 'date_uploaded', defaultValue: '')
    @Default('')
        String dateUploaded,
    @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
    @Default(-1)
        int dateUploadedUnix,
  }) = _Torrents;

  factory Torrents.fromJson(Map<String, dynamic> json) =>
      _$TorrentsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'server_time', defaultValue: -1) @Default(-1) int serverTime,
    @JsonKey(name: 'server_timezone', defaultValue: '')
    @Default('')
        String serverTimezone,
    @JsonKey(name: 'api_version', defaultValue: -1) @Default(-1) int apiVersion,
    @JsonKey(name: 'execution_time', defaultValue: '')
    @Default('')
        String executionTime,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
