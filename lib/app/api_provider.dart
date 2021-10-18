import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yts_bloc_2021/app/failure.dart';

import 'package:yts_bloc_2021/model/movies.dart';

abstract class IMovieRepositiry {
  final Dio dio;

  IMovieRepositiry(this.dio);

  Future<Either<MoviesCollection, Failure>> getallMovies(
      {required int limit, required int page, required String genre});

  Future<Either<MoviesCollection, Failure>> getMoviesSuggestions(
      {required int movieId});

  Future<Either<MoviesCollection, Failure>> searchMovie(
      {required String moviname});
}

class MovieRepository extends IMovieRepositiry {
  MovieRepository(Dio dio) : super(dio);

  @override
  Future<Either<MoviesCollection, Failure>> getallMovies({
    required int limit,
    required int page,
    required String genre,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        'https://yts.mx/api/v2/list_movies.json',
        queryParameters: {
          'limit': limit,
          'page': page,
          'genre': genre,
        },
      );
      log('$response');
      final json = Map<String, dynamic>.from(response.data!);
      final data = MoviesCollection.fromJson(json);
      return Left(data);
    } on DioError catch (e) {
      log('$e');
      return Right(e.toFailure);
    } catch (e) {
      log('$e');
      return Right(Failure.fromException(e));
    }
  }

  @override
  Future<Either<MoviesCollection, Failure>> getMoviesSuggestions({
    required int movieId,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
          'https://yts.mx/api/v2/movie_suggestions.json',
          queryParameters: {
            'movie_id': movieId,
          });
      log('$response');
      final json = Map<String, dynamic>.from(response.data!);
      final data = MoviesCollection.fromJson(json);
      return Left(data);
    } on DioError catch (e) {
      log('$e');
      return Right(e.toFailure);
    } catch (e) {
      log('$e');
      return Right(Failure.fromException(e));
    }
  }

  @override
  Future<Either<MoviesCollection, Failure>> searchMovie({
    required String moviname,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
          'https://yts.mx/api/v2/list_movies.json',
          queryParameters: {
            'query_term': moviname,
          });
      log('$response');
      final json = Map<String, dynamic>.from(response.data!);
      final data = MoviesCollection.fromJson(json);
      return Left(data);
    } on DioError catch (e) {
      log('$e');
      return Right(e.toFailure);
    } catch (e) {
      log('$e');
      return Right(Failure.fromException(e));
    }
  }
}
