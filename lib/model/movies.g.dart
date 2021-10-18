// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesCollection _$$_MoviesCollectionFromJson(Map<String, dynamic> json) =>
    _$_MoviesCollection(
      status: json['status'] as String? ?? '',
      statusMessage: json['status_message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['@meta'] == null
          ? null
          : Meta.fromJson(json['@meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MoviesCollectionToJson(_$_MoviesCollection instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_message': instance.statusMessage,
      'data': instance.data,
      '@meta': instance.meta,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      movieCount: json['movie_count'] as int? ?? -1,
      limit: json['limit'] as int? ?? -1,
      pageNumber: json['page_number'] as int? ?? -1,
      movies: (json['movies'] as List<dynamic>?)
              ?.map((e) => Movies.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'movie_count': instance.movieCount,
      'limit': instance.limit,
      'page_number': instance.pageNumber,
      'movies': instance.movies,
    };

_$_Movies _$$_MoviesFromJson(Map<String, dynamic> json) => _$_Movies(
      id: json['id'] as int? ?? -1,
      url: json['url'] as String? ?? '',
      imdbCode: json['imdb_code'] as String? ?? '',
      title: json['title'] as String? ?? '',
      titleEnglish: json['title_english'] as String? ?? '',
      titleLong: json['title_long'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      year: json['year'] as int? ?? -1,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      runtime: json['runtime'] as int? ?? -1,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      summary: json['summary'] as String? ?? '',
      descriptionFull: json['description_full'] as String? ?? '',
      synopsis: json['synopsis'] as String? ?? '',
      ytTrailerCode: json['yt_trailer_code'] as String? ?? '',
      language: json['language'] as String? ?? '',
      mpaRating: json['mpa_rating'] as String? ?? '',
      backgroundImage: json['background_image'] as String? ?? '',
      backgroundImageOriginal:
          json['background_image_original'] as String? ?? '',
      smallCoverImage: json['small_cover_image'] as String? ?? '',
      mediumCoverImage: json['medium_cover_image'] as String? ?? '',
      largeCoverImage: json['large_cover_image'] as String? ?? '',
      state: json['state'] as String? ?? '',
      torrents: (json['torrents'] as List<dynamic>?)
              ?.map((e) => Torrents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      dateUploaded: json['date_uploaded'] as String? ?? '',
      dateUploadedUnix: json['date_uploaded_unix'] as int? ?? -1,
    );

Map<String, dynamic> _$$_MoviesToJson(_$_Movies instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'imdb_code': instance.imdbCode,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_long': instance.titleLong,
      'slug': instance.slug,
      'year': instance.year,
      'rating': instance.rating,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'summary': instance.summary,
      'description_full': instance.descriptionFull,
      'synopsis': instance.synopsis,
      'yt_trailer_code': instance.ytTrailerCode,
      'language': instance.language,
      'mpa_rating': instance.mpaRating,
      'background_image': instance.backgroundImage,
      'background_image_original': instance.backgroundImageOriginal,
      'small_cover_image': instance.smallCoverImage,
      'medium_cover_image': instance.mediumCoverImage,
      'large_cover_image': instance.largeCoverImage,
      'state': instance.state,
      'torrents': instance.torrents,
      'date_uploaded': instance.dateUploaded,
      'date_uploaded_unix': instance.dateUploadedUnix,
    };

_$_Torrents _$$_TorrentsFromJson(Map<String, dynamic> json) => _$_Torrents(
      url: json['url'] as String? ?? '',
      hash: json['hash'] as String? ?? '',
      quality: json['quality'] as String? ?? '',
      type: json['type'] as String? ?? '',
      seeds: json['seeds'] as int? ?? -1,
      peers: json['peers'] as int? ?? -1,
      size: json['size'] as String? ?? '',
      sizeBytes: json['size_bytes'] as int? ?? -1,
      dateUploaded: json['date_uploaded'] as String? ?? '',
      dateUploadedUnix: json['date_uploaded_unix'] as int? ?? -1,
    );

Map<String, dynamic> _$$_TorrentsToJson(_$_Torrents instance) =>
    <String, dynamic>{
      'url': instance.url,
      'hash': instance.hash,
      'quality': instance.quality,
      'type': instance.type,
      'seeds': instance.seeds,
      'peers': instance.peers,
      'size': instance.size,
      'size_bytes': instance.sizeBytes,
      'date_uploaded': instance.dateUploaded,
      'date_uploaded_unix': instance.dateUploadedUnix,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      serverTime: json['server_time'] as int? ?? -1,
      serverTimezone: json['server_timezone'] as String? ?? '',
      apiVersion: json['api_version'] as int? ?? -1,
      executionTime: json['execution_time'] as String? ?? '',
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'server_time': instance.serverTime,
      'server_timezone': instance.serverTimezone,
      'api_version': instance.apiVersion,
      'execution_time': instance.executionTime,
    };
