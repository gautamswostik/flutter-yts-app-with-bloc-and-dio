// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesCollection _$MoviesCollectionFromJson(Map<String, dynamic> json) {
  return _MoviesCollection.fromJson(json);
}

/// @nodoc
class _$MoviesCollectionTearOff {
  const _$MoviesCollectionTearOff();

  _MoviesCollection call(
      {String status = '',
      @JsonKey(name: 'status_message') String statusMessage = '',
      Data? data,
      @JsonKey(name: '@meta') Meta? meta}) {
    return _MoviesCollection(
      status: status,
      statusMessage: statusMessage,
      data: data,
      meta: meta,
    );
  }

  MoviesCollection fromJson(Map<String, Object?> json) {
    return MoviesCollection.fromJson(json);
  }
}

/// @nodoc
const $MoviesCollection = _$MoviesCollectionTearOff();

/// @nodoc
mixin _$MoviesCollection {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_message')
  String get statusMessage => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: '@meta')
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCollectionCopyWith<MoviesCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCollectionCopyWith<$Res> {
  factory $MoviesCollectionCopyWith(
          MoviesCollection value, $Res Function(MoviesCollection) then) =
      _$MoviesCollectionCopyWithImpl<$Res>;
  $Res call(
      {String status,
      @JsonKey(name: 'status_message') String statusMessage,
      Data? data,
      @JsonKey(name: '@meta') Meta? meta});

  $DataCopyWith<$Res>? get data;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$MoviesCollectionCopyWithImpl<$Res>
    implements $MoviesCollectionCopyWith<$Res> {
  _$MoviesCollectionCopyWithImpl(this._value, this._then);

  final MoviesCollection _value;
  // ignore: unused_field
  final $Res Function(MoviesCollection) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusMessage = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$MoviesCollectionCopyWith<$Res>
    implements $MoviesCollectionCopyWith<$Res> {
  factory _$MoviesCollectionCopyWith(
          _MoviesCollection value, $Res Function(_MoviesCollection) then) =
      __$MoviesCollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      @JsonKey(name: 'status_message') String statusMessage,
      Data? data,
      @JsonKey(name: '@meta') Meta? meta});

  @override
  $DataCopyWith<$Res>? get data;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$MoviesCollectionCopyWithImpl<$Res>
    extends _$MoviesCollectionCopyWithImpl<$Res>
    implements _$MoviesCollectionCopyWith<$Res> {
  __$MoviesCollectionCopyWithImpl(
      _MoviesCollection _value, $Res Function(_MoviesCollection) _then)
      : super(_value, (v) => _then(v as _MoviesCollection));

  @override
  _MoviesCollection get _value => super._value as _MoviesCollection;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusMessage = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_MoviesCollection(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesCollection implements _MoviesCollection {
  const _$_MoviesCollection(
      {this.status = '',
      @JsonKey(name: 'status_message') this.statusMessage = '',
      this.data,
      @JsonKey(name: '@meta') this.meta});

  factory _$_MoviesCollection.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesCollectionFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String status;
  @override
  @JsonKey(name: 'status_message')
  final String statusMessage;
  @override
  final Data? data;
  @override
  @JsonKey(name: '@meta')
  final Meta? meta;

  @override
  String toString() {
    return 'MoviesCollection(status: $status, statusMessage: $statusMessage, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesCollection &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, statusMessage, data, meta);

  @JsonKey(ignore: true)
  @override
  _$MoviesCollectionCopyWith<_MoviesCollection> get copyWith =>
      __$MoviesCollectionCopyWithImpl<_MoviesCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesCollectionToJson(this);
  }
}

abstract class _MoviesCollection implements MoviesCollection {
  const factory _MoviesCollection(
      {String status,
      @JsonKey(name: 'status_message') String statusMessage,
      Data? data,
      @JsonKey(name: '@meta') Meta? meta}) = _$_MoviesCollection;

  factory _MoviesCollection.fromJson(Map<String, dynamic> json) =
      _$_MoviesCollection.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'status_message')
  String get statusMessage;
  @override
  Data? get data;
  @override
  @JsonKey(name: '@meta')
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$MoviesCollectionCopyWith<_MoviesCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {@JsonKey(name: 'movie_count', defaultValue: -1) int movieCount = -1,
      int limit = -1,
      @JsonKey(name: 'page_number', defaultValue: -1) int pageNumber = -1,
      List<Movies> movies = const <Movies>[]}) {
    return _Data(
      movieCount: movieCount,
      limit: limit,
      pageNumber: pageNumber,
      movies: movies,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'movie_count', defaultValue: -1)
  int get movieCount => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_number', defaultValue: -1)
  int get pageNumber => throw _privateConstructorUsedError;
  List<Movies> get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'movie_count', defaultValue: -1) int movieCount,
      int limit,
      @JsonKey(name: 'page_number', defaultValue: -1) int pageNumber,
      List<Movies> movies});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? movieCount = freezed,
    Object? limit = freezed,
    Object? pageNumber = freezed,
    Object? movies = freezed,
  }) {
    return _then(_value.copyWith(
      movieCount: movieCount == freezed
          ? _value.movieCount
          : movieCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'movie_count', defaultValue: -1) int movieCount,
      int limit,
      @JsonKey(name: 'page_number', defaultValue: -1) int pageNumber,
      List<Movies> movies});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? movieCount = freezed,
    Object? limit = freezed,
    Object? pageNumber = freezed,
    Object? movies = freezed,
  }) {
    return _then(_Data(
      movieCount: movieCount == freezed
          ? _value.movieCount
          : movieCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {@JsonKey(name: 'movie_count', defaultValue: -1) this.movieCount = -1,
      this.limit = -1,
      @JsonKey(name: 'page_number', defaultValue: -1) this.pageNumber = -1,
      this.movies = const <Movies>[]});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: 'movie_count', defaultValue: -1)
  final int movieCount;
  @JsonKey(defaultValue: -1)
  @override
  final int limit;
  @override
  @JsonKey(name: 'page_number', defaultValue: -1)
  final int pageNumber;
  @JsonKey(defaultValue: const <Movies>[])
  @override
  final List<Movies> movies;

  @override
  String toString() {
    return 'Data(movieCount: $movieCount, limit: $limit, pageNumber: $pageNumber, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            (identical(other.movieCount, movieCount) ||
                other.movieCount == movieCount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieCount, limit, pageNumber,
      const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: 'movie_count', defaultValue: -1) int movieCount,
      int limit,
      @JsonKey(name: 'page_number', defaultValue: -1) int pageNumber,
      List<Movies> movies}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'movie_count', defaultValue: -1)
  int get movieCount;
  @override
  int get limit;
  @override
  @JsonKey(name: 'page_number', defaultValue: -1)
  int get pageNumber;
  @override
  List<Movies> get movies;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
class _$MoviesTearOff {
  const _$MoviesTearOff();

  _Movies call(
      {int id = -1,
      String url = '',
      @JsonKey(name: 'imdb_code', defaultValue: '')
          String imdbCode = '',
      String title = '',
      @JsonKey(name: 'title_english', defaultValue: '')
          String titleEnglish = '',
      @JsonKey(name: 'title_long', defaultValue: '')
          String titleLong = '',
      String slug = '',
      int year = -1,
      double rating = 0.0,
      int runtime = -1,
      List<String> genres = const <String>[],
      String summary = '',
      @JsonKey(name: 'description_full', defaultValue: '')
          String descriptionFull = '',
      String synopsis = '',
      @JsonKey(name: 'yt_trailer_code', defaultValue: '')
          String ytTrailerCode = '',
      String language = '',
      @JsonKey(name: 'mpa_rating', defaultValue: '')
          String mpaRating = '',
      @JsonKey(name: 'background_image', defaultValue: '')
          String backgroundImage = '',
      @JsonKey(name: 'background_image_original', defaultValue: '')
          String backgroundImageOriginal = '',
      @JsonKey(name: 'small_cover_image', defaultValue: '')
          String smallCoverImage = '',
      @JsonKey(name: 'medium_cover_image', defaultValue: '')
          String mediumCoverImage = '',
      @JsonKey(name: 'large_cover_image', defaultValue: '')
          String largeCoverImage = '',
      String state = '',
      List<Torrents> torrents = const <Torrents>[],
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded = '',
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix = -1}) {
    return _Movies(
      id: id,
      url: url,
      imdbCode: imdbCode,
      title: title,
      titleEnglish: titleEnglish,
      titleLong: titleLong,
      slug: slug,
      year: year,
      rating: rating,
      runtime: runtime,
      genres: genres,
      summary: summary,
      descriptionFull: descriptionFull,
      synopsis: synopsis,
      ytTrailerCode: ytTrailerCode,
      language: language,
      mpaRating: mpaRating,
      backgroundImage: backgroundImage,
      backgroundImageOriginal: backgroundImageOriginal,
      smallCoverImage: smallCoverImage,
      mediumCoverImage: mediumCoverImage,
      largeCoverImage: largeCoverImage,
      state: state,
      torrents: torrents,
      dateUploaded: dateUploaded,
      dateUploadedUnix: dateUploadedUnix,
    );
  }

  Movies fromJson(Map<String, Object?> json) {
    return Movies.fromJson(json);
  }
}

/// @nodoc
const $Movies = _$MoviesTearOff();

/// @nodoc
mixin _$Movies {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_code', defaultValue: '')
  String get imdbCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_english', defaultValue: '')
  String get titleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_long', defaultValue: '')
  String get titleLong => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_full', defaultValue: '')
  String get descriptionFull => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;
  @JsonKey(name: 'yt_trailer_code', defaultValue: '')
  String get ytTrailerCode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'mpa_rating', defaultValue: '')
  String get mpaRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_image', defaultValue: '')
  String get backgroundImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_image_original', defaultValue: '')
  String get backgroundImageOriginal => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_cover_image', defaultValue: '')
  String get smallCoverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium_cover_image', defaultValue: '')
  String get mediumCoverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_cover_image', defaultValue: '')
  String get largeCoverImage => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  List<Torrents> get torrents => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  String get dateUploaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  int get dateUploadedUnix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      @JsonKey(name: 'imdb_code', defaultValue: '')
          String imdbCode,
      String title,
      @JsonKey(name: 'title_english', defaultValue: '')
          String titleEnglish,
      @JsonKey(name: 'title_long', defaultValue: '')
          String titleLong,
      String slug,
      int year,
      double rating,
      int runtime,
      List<String> genres,
      String summary,
      @JsonKey(name: 'description_full', defaultValue: '')
          String descriptionFull,
      String synopsis,
      @JsonKey(name: 'yt_trailer_code', defaultValue: '')
          String ytTrailerCode,
      String language,
      @JsonKey(name: 'mpa_rating', defaultValue: '')
          String mpaRating,
      @JsonKey(name: 'background_image', defaultValue: '')
          String backgroundImage,
      @JsonKey(name: 'background_image_original', defaultValue: '')
          String backgroundImageOriginal,
      @JsonKey(name: 'small_cover_image', defaultValue: '')
          String smallCoverImage,
      @JsonKey(name: 'medium_cover_image', defaultValue: '')
          String mediumCoverImage,
      @JsonKey(name: 'large_cover_image', defaultValue: '')
          String largeCoverImage,
      String state,
      List<Torrents> torrents,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res> implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  final Movies _value;
  // ignore: unused_field
  final $Res Function(Movies) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? imdbCode = freezed,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleLong = freezed,
    Object? slug = freezed,
    Object? year = freezed,
    Object? rating = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? summary = freezed,
    Object? descriptionFull = freezed,
    Object? synopsis = freezed,
    Object? ytTrailerCode = freezed,
    Object? language = freezed,
    Object? mpaRating = freezed,
    Object? backgroundImage = freezed,
    Object? backgroundImageOriginal = freezed,
    Object? smallCoverImage = freezed,
    Object? mediumCoverImage = freezed,
    Object? largeCoverImage = freezed,
    Object? state = freezed,
    Object? torrents = freezed,
    Object? dateUploaded = freezed,
    Object? dateUploadedUnix = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imdbCode: imdbCode == freezed
          ? _value.imdbCode
          : imdbCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: titleEnglish == freezed
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      titleLong: titleLong == freezed
          ? _value.titleLong
          : titleLong // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFull: descriptionFull == freezed
          ? _value.descriptionFull
          : descriptionFull // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      ytTrailerCode: ytTrailerCode == freezed
          ? _value.ytTrailerCode
          : ytTrailerCode // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      mpaRating: mpaRating == freezed
          ? _value.mpaRating
          : mpaRating // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: backgroundImage == freezed
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageOriginal: backgroundImageOriginal == freezed
          ? _value.backgroundImageOriginal
          : backgroundImageOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      smallCoverImage: smallCoverImage == freezed
          ? _value.smallCoverImage
          : smallCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      mediumCoverImage: mediumCoverImage == freezed
          ? _value.mediumCoverImage
          : mediumCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      largeCoverImage: largeCoverImage == freezed
          ? _value.largeCoverImage
          : largeCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      torrents: torrents == freezed
          ? _value.torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<Torrents>,
      dateUploaded: dateUploaded == freezed
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploadedUnix: dateUploadedUnix == freezed
          ? _value.dateUploadedUnix
          : dateUploadedUnix // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MoviesCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$MoviesCopyWith(_Movies value, $Res Function(_Movies) then) =
      __$MoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      @JsonKey(name: 'imdb_code', defaultValue: '')
          String imdbCode,
      String title,
      @JsonKey(name: 'title_english', defaultValue: '')
          String titleEnglish,
      @JsonKey(name: 'title_long', defaultValue: '')
          String titleLong,
      String slug,
      int year,
      double rating,
      int runtime,
      List<String> genres,
      String summary,
      @JsonKey(name: 'description_full', defaultValue: '')
          String descriptionFull,
      String synopsis,
      @JsonKey(name: 'yt_trailer_code', defaultValue: '')
          String ytTrailerCode,
      String language,
      @JsonKey(name: 'mpa_rating', defaultValue: '')
          String mpaRating,
      @JsonKey(name: 'background_image', defaultValue: '')
          String backgroundImage,
      @JsonKey(name: 'background_image_original', defaultValue: '')
          String backgroundImageOriginal,
      @JsonKey(name: 'small_cover_image', defaultValue: '')
          String smallCoverImage,
      @JsonKey(name: 'medium_cover_image', defaultValue: '')
          String mediumCoverImage,
      @JsonKey(name: 'large_cover_image', defaultValue: '')
          String largeCoverImage,
      String state,
      List<Torrents> torrents,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix});
}

/// @nodoc
class __$MoviesCopyWithImpl<$Res> extends _$MoviesCopyWithImpl<$Res>
    implements _$MoviesCopyWith<$Res> {
  __$MoviesCopyWithImpl(_Movies _value, $Res Function(_Movies) _then)
      : super(_value, (v) => _then(v as _Movies));

  @override
  _Movies get _value => super._value as _Movies;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? imdbCode = freezed,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleLong = freezed,
    Object? slug = freezed,
    Object? year = freezed,
    Object? rating = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? summary = freezed,
    Object? descriptionFull = freezed,
    Object? synopsis = freezed,
    Object? ytTrailerCode = freezed,
    Object? language = freezed,
    Object? mpaRating = freezed,
    Object? backgroundImage = freezed,
    Object? backgroundImageOriginal = freezed,
    Object? smallCoverImage = freezed,
    Object? mediumCoverImage = freezed,
    Object? largeCoverImage = freezed,
    Object? state = freezed,
    Object? torrents = freezed,
    Object? dateUploaded = freezed,
    Object? dateUploadedUnix = freezed,
  }) {
    return _then(_Movies(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imdbCode: imdbCode == freezed
          ? _value.imdbCode
          : imdbCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: titleEnglish == freezed
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      titleLong: titleLong == freezed
          ? _value.titleLong
          : titleLong // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFull: descriptionFull == freezed
          ? _value.descriptionFull
          : descriptionFull // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      ytTrailerCode: ytTrailerCode == freezed
          ? _value.ytTrailerCode
          : ytTrailerCode // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      mpaRating: mpaRating == freezed
          ? _value.mpaRating
          : mpaRating // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: backgroundImage == freezed
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageOriginal: backgroundImageOriginal == freezed
          ? _value.backgroundImageOriginal
          : backgroundImageOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      smallCoverImage: smallCoverImage == freezed
          ? _value.smallCoverImage
          : smallCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      mediumCoverImage: mediumCoverImage == freezed
          ? _value.mediumCoverImage
          : mediumCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      largeCoverImage: largeCoverImage == freezed
          ? _value.largeCoverImage
          : largeCoverImage // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      torrents: torrents == freezed
          ? _value.torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<Torrents>,
      dateUploaded: dateUploaded == freezed
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploadedUnix: dateUploadedUnix == freezed
          ? _value.dateUploadedUnix
          : dateUploadedUnix // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movies implements _Movies {
  const _$_Movies(
      {this.id = -1,
      this.url = '',
      @JsonKey(name: 'imdb_code', defaultValue: '')
          this.imdbCode = '',
      this.title = '',
      @JsonKey(name: 'title_english', defaultValue: '')
          this.titleEnglish = '',
      @JsonKey(name: 'title_long', defaultValue: '')
          this.titleLong = '',
      this.slug = '',
      this.year = -1,
      this.rating = 0.0,
      this.runtime = -1,
      this.genres = const <String>[],
      this.summary = '',
      @JsonKey(name: 'description_full', defaultValue: '')
          this.descriptionFull = '',
      this.synopsis = '',
      @JsonKey(name: 'yt_trailer_code', defaultValue: '')
          this.ytTrailerCode = '',
      this.language = '',
      @JsonKey(name: 'mpa_rating', defaultValue: '')
          this.mpaRating = '',
      @JsonKey(name: 'background_image', defaultValue: '')
          this.backgroundImage = '',
      @JsonKey(name: 'background_image_original', defaultValue: '')
          this.backgroundImageOriginal = '',
      @JsonKey(name: 'small_cover_image', defaultValue: '')
          this.smallCoverImage = '',
      @JsonKey(name: 'medium_cover_image', defaultValue: '')
          this.mediumCoverImage = '',
      @JsonKey(name: 'large_cover_image', defaultValue: '')
          this.largeCoverImage = '',
      this.state = '',
      this.torrents = const <Torrents>[],
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          this.dateUploaded = '',
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          this.dateUploadedUnix = -1});

  factory _$_Movies.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesFromJson(json);

  @JsonKey(defaultValue: -1)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String url;
  @override
  @JsonKey(name: 'imdb_code', defaultValue: '')
  final String imdbCode;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  @JsonKey(name: 'title_english', defaultValue: '')
  final String titleEnglish;
  @override
  @JsonKey(name: 'title_long', defaultValue: '')
  final String titleLong;
  @JsonKey(defaultValue: '')
  @override
  final String slug;
  @JsonKey(defaultValue: -1)
  @override
  final int year;
  @JsonKey(defaultValue: 0.0)
  @override
  final double rating;
  @JsonKey(defaultValue: -1)
  @override
  final int runtime;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> genres;
  @JsonKey(defaultValue: '')
  @override
  final String summary;
  @override
  @JsonKey(name: 'description_full', defaultValue: '')
  final String descriptionFull;
  @JsonKey(defaultValue: '')
  @override
  final String synopsis;
  @override
  @JsonKey(name: 'yt_trailer_code', defaultValue: '')
  final String ytTrailerCode;
  @JsonKey(defaultValue: '')
  @override
  final String language;
  @override
  @JsonKey(name: 'mpa_rating', defaultValue: '')
  final String mpaRating;
  @override
  @JsonKey(name: 'background_image', defaultValue: '')
  final String backgroundImage;
  @override
  @JsonKey(name: 'background_image_original', defaultValue: '')
  final String backgroundImageOriginal;
  @override
  @JsonKey(name: 'small_cover_image', defaultValue: '')
  final String smallCoverImage;
  @override
  @JsonKey(name: 'medium_cover_image', defaultValue: '')
  final String mediumCoverImage;
  @override
  @JsonKey(name: 'large_cover_image', defaultValue: '')
  final String largeCoverImage;
  @JsonKey(defaultValue: '')
  @override
  final String state;
  @JsonKey(defaultValue: const <Torrents>[])
  @override
  final List<Torrents> torrents;
  @override
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  final String dateUploaded;
  @override
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  final int dateUploadedUnix;

  @override
  String toString() {
    return 'Movies(id: $id, url: $url, imdbCode: $imdbCode, title: $title, titleEnglish: $titleEnglish, titleLong: $titleLong, slug: $slug, year: $year, rating: $rating, runtime: $runtime, genres: $genres, summary: $summary, descriptionFull: $descriptionFull, synopsis: $synopsis, ytTrailerCode: $ytTrailerCode, language: $language, mpaRating: $mpaRating, backgroundImage: $backgroundImage, backgroundImageOriginal: $backgroundImageOriginal, smallCoverImage: $smallCoverImage, mediumCoverImage: $mediumCoverImage, largeCoverImage: $largeCoverImage, state: $state, torrents: $torrents, dateUploaded: $dateUploaded, dateUploadedUnix: $dateUploadedUnix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movies &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imdbCode, imdbCode) ||
                other.imdbCode == imdbCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleEnglish, titleEnglish) ||
                other.titleEnglish == titleEnglish) &&
            (identical(other.titleLong, titleLong) ||
                other.titleLong == titleLong) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.descriptionFull, descriptionFull) ||
                other.descriptionFull == descriptionFull) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.ytTrailerCode, ytTrailerCode) ||
                other.ytTrailerCode == ytTrailerCode) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.mpaRating, mpaRating) ||
                other.mpaRating == mpaRating) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(
                    other.backgroundImageOriginal, backgroundImageOriginal) ||
                other.backgroundImageOriginal == backgroundImageOriginal) &&
            (identical(other.smallCoverImage, smallCoverImage) ||
                other.smallCoverImage == smallCoverImage) &&
            (identical(other.mediumCoverImage, mediumCoverImage) ||
                other.mediumCoverImage == mediumCoverImage) &&
            (identical(other.largeCoverImage, largeCoverImage) ||
                other.largeCoverImage == largeCoverImage) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other.torrents, torrents) &&
            (identical(other.dateUploaded, dateUploaded) ||
                other.dateUploaded == dateUploaded) &&
            (identical(other.dateUploadedUnix, dateUploadedUnix) ||
                other.dateUploadedUnix == dateUploadedUnix));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        url,
        imdbCode,
        title,
        titleEnglish,
        titleLong,
        slug,
        year,
        rating,
        runtime,
        const DeepCollectionEquality().hash(genres),
        summary,
        descriptionFull,
        synopsis,
        ytTrailerCode,
        language,
        mpaRating,
        backgroundImage,
        backgroundImageOriginal,
        smallCoverImage,
        mediumCoverImage,
        largeCoverImage,
        state,
        const DeepCollectionEquality().hash(torrents),
        dateUploaded,
        dateUploadedUnix
      ]);

  @JsonKey(ignore: true)
  @override
  _$MoviesCopyWith<_Movies> get copyWith =>
      __$MoviesCopyWithImpl<_Movies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesToJson(this);
  }
}

abstract class _Movies implements Movies {
  const factory _Movies(
      {int id,
      String url,
      @JsonKey(name: 'imdb_code', defaultValue: '')
          String imdbCode,
      String title,
      @JsonKey(name: 'title_english', defaultValue: '')
          String titleEnglish,
      @JsonKey(name: 'title_long', defaultValue: '')
          String titleLong,
      String slug,
      int year,
      double rating,
      int runtime,
      List<String> genres,
      String summary,
      @JsonKey(name: 'description_full', defaultValue: '')
          String descriptionFull,
      String synopsis,
      @JsonKey(name: 'yt_trailer_code', defaultValue: '')
          String ytTrailerCode,
      String language,
      @JsonKey(name: 'mpa_rating', defaultValue: '')
          String mpaRating,
      @JsonKey(name: 'background_image', defaultValue: '')
          String backgroundImage,
      @JsonKey(name: 'background_image_original', defaultValue: '')
          String backgroundImageOriginal,
      @JsonKey(name: 'small_cover_image', defaultValue: '')
          String smallCoverImage,
      @JsonKey(name: 'medium_cover_image', defaultValue: '')
          String mediumCoverImage,
      @JsonKey(name: 'large_cover_image', defaultValue: '')
          String largeCoverImage,
      String state,
      List<Torrents> torrents,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix}) = _$_Movies;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$_Movies.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(name: 'imdb_code', defaultValue: '')
  String get imdbCode;
  @override
  String get title;
  @override
  @JsonKey(name: 'title_english', defaultValue: '')
  String get titleEnglish;
  @override
  @JsonKey(name: 'title_long', defaultValue: '')
  String get titleLong;
  @override
  String get slug;
  @override
  int get year;
  @override
  double get rating;
  @override
  int get runtime;
  @override
  List<String> get genres;
  @override
  String get summary;
  @override
  @JsonKey(name: 'description_full', defaultValue: '')
  String get descriptionFull;
  @override
  String get synopsis;
  @override
  @JsonKey(name: 'yt_trailer_code', defaultValue: '')
  String get ytTrailerCode;
  @override
  String get language;
  @override
  @JsonKey(name: 'mpa_rating', defaultValue: '')
  String get mpaRating;
  @override
  @JsonKey(name: 'background_image', defaultValue: '')
  String get backgroundImage;
  @override
  @JsonKey(name: 'background_image_original', defaultValue: '')
  String get backgroundImageOriginal;
  @override
  @JsonKey(name: 'small_cover_image', defaultValue: '')
  String get smallCoverImage;
  @override
  @JsonKey(name: 'medium_cover_image', defaultValue: '')
  String get mediumCoverImage;
  @override
  @JsonKey(name: 'large_cover_image', defaultValue: '')
  String get largeCoverImage;
  @override
  String get state;
  @override
  List<Torrents> get torrents;
  @override
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  String get dateUploaded;
  @override
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  int get dateUploadedUnix;
  @override
  @JsonKey(ignore: true)
  _$MoviesCopyWith<_Movies> get copyWith => throw _privateConstructorUsedError;
}

Torrents _$TorrentsFromJson(Map<String, dynamic> json) {
  return _Torrents.fromJson(json);
}

/// @nodoc
class _$TorrentsTearOff {
  const _$TorrentsTearOff();

  _Torrents call(
      {String url = '',
      String hash = '',
      String quality = '',
      String type = '',
      int seeds = -1,
      int peers = -1,
      String size = '',
      @JsonKey(name: 'size_bytes', defaultValue: -1)
          int sizeBytes = -1,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded = '',
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix = -1}) {
    return _Torrents(
      url: url,
      hash: hash,
      quality: quality,
      type: type,
      seeds: seeds,
      peers: peers,
      size: size,
      sizeBytes: sizeBytes,
      dateUploaded: dateUploaded,
      dateUploadedUnix: dateUploadedUnix,
    );
  }

  Torrents fromJson(Map<String, Object?> json) {
    return Torrents.fromJson(json);
  }
}

/// @nodoc
const $Torrents = _$TorrentsTearOff();

/// @nodoc
mixin _$Torrents {
  String get url => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get seeds => throw _privateConstructorUsedError;
  int get peers => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_bytes', defaultValue: -1)
  int get sizeBytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  String get dateUploaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  int get dateUploadedUnix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TorrentsCopyWith<Torrents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TorrentsCopyWith<$Res> {
  factory $TorrentsCopyWith(Torrents value, $Res Function(Torrents) then) =
      _$TorrentsCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String hash,
      String quality,
      String type,
      int seeds,
      int peers,
      String size,
      @JsonKey(name: 'size_bytes', defaultValue: -1)
          int sizeBytes,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix});
}

/// @nodoc
class _$TorrentsCopyWithImpl<$Res> implements $TorrentsCopyWith<$Res> {
  _$TorrentsCopyWithImpl(this._value, this._then);

  final Torrents _value;
  // ignore: unused_field
  final $Res Function(Torrents) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? hash = freezed,
    Object? quality = freezed,
    Object? type = freezed,
    Object? seeds = freezed,
    Object? peers = freezed,
    Object? size = freezed,
    Object? sizeBytes = freezed,
    Object? dateUploaded = freezed,
    Object? dateUploadedUnix = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      seeds: seeds == freezed
          ? _value.seeds
          : seeds // ignore: cast_nullable_to_non_nullable
              as int,
      peers: peers == freezed
          ? _value.peers
          : peers // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: sizeBytes == freezed
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      dateUploaded: dateUploaded == freezed
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploadedUnix: dateUploadedUnix == freezed
          ? _value.dateUploadedUnix
          : dateUploadedUnix // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TorrentsCopyWith<$Res> implements $TorrentsCopyWith<$Res> {
  factory _$TorrentsCopyWith(_Torrents value, $Res Function(_Torrents) then) =
      __$TorrentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String hash,
      String quality,
      String type,
      int seeds,
      int peers,
      String size,
      @JsonKey(name: 'size_bytes', defaultValue: -1)
          int sizeBytes,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix});
}

/// @nodoc
class __$TorrentsCopyWithImpl<$Res> extends _$TorrentsCopyWithImpl<$Res>
    implements _$TorrentsCopyWith<$Res> {
  __$TorrentsCopyWithImpl(_Torrents _value, $Res Function(_Torrents) _then)
      : super(_value, (v) => _then(v as _Torrents));

  @override
  _Torrents get _value => super._value as _Torrents;

  @override
  $Res call({
    Object? url = freezed,
    Object? hash = freezed,
    Object? quality = freezed,
    Object? type = freezed,
    Object? seeds = freezed,
    Object? peers = freezed,
    Object? size = freezed,
    Object? sizeBytes = freezed,
    Object? dateUploaded = freezed,
    Object? dateUploadedUnix = freezed,
  }) {
    return _then(_Torrents(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      seeds: seeds == freezed
          ? _value.seeds
          : seeds // ignore: cast_nullable_to_non_nullable
              as int,
      peers: peers == freezed
          ? _value.peers
          : peers // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: sizeBytes == freezed
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      dateUploaded: dateUploaded == freezed
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploadedUnix: dateUploadedUnix == freezed
          ? _value.dateUploadedUnix
          : dateUploadedUnix // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Torrents implements _Torrents {
  const _$_Torrents(
      {this.url = '',
      this.hash = '',
      this.quality = '',
      this.type = '',
      this.seeds = -1,
      this.peers = -1,
      this.size = '',
      @JsonKey(name: 'size_bytes', defaultValue: -1)
          this.sizeBytes = -1,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          this.dateUploaded = '',
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          this.dateUploadedUnix = -1});

  factory _$_Torrents.fromJson(Map<String, dynamic> json) =>
      _$$_TorrentsFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String url;
  @JsonKey(defaultValue: '')
  @override
  final String hash;
  @JsonKey(defaultValue: '')
  @override
  final String quality;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: -1)
  @override
  final int seeds;
  @JsonKey(defaultValue: -1)
  @override
  final int peers;
  @JsonKey(defaultValue: '')
  @override
  final String size;
  @override
  @JsonKey(name: 'size_bytes', defaultValue: -1)
  final int sizeBytes;
  @override
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  final String dateUploaded;
  @override
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  final int dateUploadedUnix;

  @override
  String toString() {
    return 'Torrents(url: $url, hash: $hash, quality: $quality, type: $type, seeds: $seeds, peers: $peers, size: $size, sizeBytes: $sizeBytes, dateUploaded: $dateUploaded, dateUploadedUnix: $dateUploadedUnix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Torrents &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.seeds, seeds) || other.seeds == seeds) &&
            (identical(other.peers, peers) || other.peers == peers) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.dateUploaded, dateUploaded) ||
                other.dateUploaded == dateUploaded) &&
            (identical(other.dateUploadedUnix, dateUploadedUnix) ||
                other.dateUploadedUnix == dateUploadedUnix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, hash, quality, type, seeds,
      peers, size, sizeBytes, dateUploaded, dateUploadedUnix);

  @JsonKey(ignore: true)
  @override
  _$TorrentsCopyWith<_Torrents> get copyWith =>
      __$TorrentsCopyWithImpl<_Torrents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TorrentsToJson(this);
  }
}

abstract class _Torrents implements Torrents {
  const factory _Torrents(
      {String url,
      String hash,
      String quality,
      String type,
      int seeds,
      int peers,
      String size,
      @JsonKey(name: 'size_bytes', defaultValue: -1)
          int sizeBytes,
      @JsonKey(name: 'date_uploaded', defaultValue: '')
          String dateUploaded,
      @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
          int dateUploadedUnix}) = _$_Torrents;

  factory _Torrents.fromJson(Map<String, dynamic> json) = _$_Torrents.fromJson;

  @override
  String get url;
  @override
  String get hash;
  @override
  String get quality;
  @override
  String get type;
  @override
  int get seeds;
  @override
  int get peers;
  @override
  String get size;
  @override
  @JsonKey(name: 'size_bytes', defaultValue: -1)
  int get sizeBytes;
  @override
  @JsonKey(name: 'date_uploaded', defaultValue: '')
  String get dateUploaded;
  @override
  @JsonKey(name: 'date_uploaded_unix', defaultValue: -1)
  int get dateUploadedUnix;
  @override
  @JsonKey(ignore: true)
  _$TorrentsCopyWith<_Torrents> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
class _$MetaTearOff {
  const _$MetaTearOff();

  _Meta call(
      {@JsonKey(name: 'server_time', defaultValue: -1)
          int serverTime = -1,
      @JsonKey(name: 'server_timezone', defaultValue: '')
          String serverTimezone = '',
      @JsonKey(name: 'api_version', defaultValue: -1)
          int apiVersion = -1,
      @JsonKey(name: 'execution_time', defaultValue: '')
          String executionTime = ''}) {
    return _Meta(
      serverTime: serverTime,
      serverTimezone: serverTimezone,
      apiVersion: apiVersion,
      executionTime: executionTime,
    );
  }

  Meta fromJson(Map<String, Object?> json) {
    return Meta.fromJson(json);
  }
}

/// @nodoc
const $Meta = _$MetaTearOff();

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'server_time', defaultValue: -1)
  int get serverTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_timezone', defaultValue: '')
  String get serverTimezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_version', defaultValue: -1)
  int get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_time', defaultValue: '')
  String get executionTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'server_time', defaultValue: -1) int serverTime,
      @JsonKey(name: 'server_timezone', defaultValue: '') String serverTimezone,
      @JsonKey(name: 'api_version', defaultValue: -1) int apiVersion,
      @JsonKey(name: 'execution_time', defaultValue: '') String executionTime});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  final Meta _value;
  // ignore: unused_field
  final $Res Function(Meta) _then;

  @override
  $Res call({
    Object? serverTime = freezed,
    Object? serverTimezone = freezed,
    Object? apiVersion = freezed,
    Object? executionTime = freezed,
  }) {
    return _then(_value.copyWith(
      serverTime: serverTime == freezed
          ? _value.serverTime
          : serverTime // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimezone: serverTimezone == freezed
          ? _value.serverTimezone
          : serverTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      executionTime: executionTime == freezed
          ? _value.executionTime
          : executionTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) then) =
      __$MetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'server_time', defaultValue: -1) int serverTime,
      @JsonKey(name: 'server_timezone', defaultValue: '') String serverTimezone,
      @JsonKey(name: 'api_version', defaultValue: -1) int apiVersion,
      @JsonKey(name: 'execution_time', defaultValue: '') String executionTime});
}

/// @nodoc
class __$MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(_Meta _value, $Res Function(_Meta) _then)
      : super(_value, (v) => _then(v as _Meta));

  @override
  _Meta get _value => super._value as _Meta;

  @override
  $Res call({
    Object? serverTime = freezed,
    Object? serverTimezone = freezed,
    Object? apiVersion = freezed,
    Object? executionTime = freezed,
  }) {
    return _then(_Meta(
      serverTime: serverTime == freezed
          ? _value.serverTime
          : serverTime // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimezone: serverTimezone == freezed
          ? _value.serverTimezone
          : serverTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as int,
      executionTime: executionTime == freezed
          ? _value.executionTime
          : executionTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(
      {@JsonKey(name: 'server_time', defaultValue: -1)
          this.serverTime = -1,
      @JsonKey(name: 'server_timezone', defaultValue: '')
          this.serverTimezone = '',
      @JsonKey(name: 'api_version', defaultValue: -1)
          this.apiVersion = -1,
      @JsonKey(name: 'execution_time', defaultValue: '')
          this.executionTime = ''});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  @JsonKey(name: 'server_time', defaultValue: -1)
  final int serverTime;
  @override
  @JsonKey(name: 'server_timezone', defaultValue: '')
  final String serverTimezone;
  @override
  @JsonKey(name: 'api_version', defaultValue: -1)
  final int apiVersion;
  @override
  @JsonKey(name: 'execution_time', defaultValue: '')
  final String executionTime;

  @override
  String toString() {
    return 'Meta(serverTime: $serverTime, serverTimezone: $serverTimezone, apiVersion: $apiVersion, executionTime: $executionTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meta &&
            (identical(other.serverTime, serverTime) ||
                other.serverTime == serverTime) &&
            (identical(other.serverTimezone, serverTimezone) ||
                other.serverTimezone == serverTimezone) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.executionTime, executionTime) ||
                other.executionTime == executionTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, serverTime, serverTimezone, apiVersion, executionTime);

  @JsonKey(ignore: true)
  @override
  _$MetaCopyWith<_Meta> get copyWith =>
      __$MetaCopyWithImpl<_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(this);
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: 'server_time', defaultValue: -1)
          int serverTime,
      @JsonKey(name: 'server_timezone', defaultValue: '')
          String serverTimezone,
      @JsonKey(name: 'api_version', defaultValue: -1)
          int apiVersion,
      @JsonKey(name: 'execution_time', defaultValue: '')
          String executionTime}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  @JsonKey(name: 'server_time', defaultValue: -1)
  int get serverTime;
  @override
  @JsonKey(name: 'server_timezone', defaultValue: '')
  String get serverTimezone;
  @override
  @JsonKey(name: 'api_version', defaultValue: -1)
  int get apiVersion;
  @override
  @JsonKey(name: 'execution_time', defaultValue: '')
  String get executionTime;
  @override
  @JsonKey(ignore: true)
  _$MetaCopyWith<_Meta> get copyWith => throw _privateConstructorUsedError;
}
