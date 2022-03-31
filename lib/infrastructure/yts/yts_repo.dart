import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/app_setup/dio/dio_client.dart';
import 'package:yts_bloc_2021/application/core/service/api_endpoints.dart';

import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';

abstract class IMovieRepositiry {
  Future<Either<MoviesCollection, Failure>> getallMovies({
    required int limit,
    required int page,
    required String genre,
  });

  Future<Either<MoviesCollection, Failure>> getMoviesSuggestions({
    required int movieId,
  });

  Future<Either<MoviesCollection, Failure>> searchMovie({
    required String moviname,
  });
}

class MovieRepository extends IMovieRepositiry {
  MovieRepository({required this.dioClient});
  final DioClient dioClient;
  Dio get _dio => dioClient.dioClient();

  @override
  Future<Either<MoviesCollection, Failure>> getallMovies({
    required int limit,
    required int page,
    required String genre,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        YtsEndPoints.allMovies,
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
      final response = await _dio.get<Map<String, dynamic>>(
        YtsEndPoints.suggestions,
        queryParameters: {
          'movie_id': movieId,
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
  Future<Either<MoviesCollection, Failure>> searchMovie({
    required String moviname,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        YtsEndPoints.searchMovie,
        queryParameters: {
          'query_term': moviname,
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
}
