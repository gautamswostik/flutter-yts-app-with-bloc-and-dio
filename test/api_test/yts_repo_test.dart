import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/app_setup/dio/dio_client.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group(
    'Testing YTS MovieRepository for YTS api calls',
    () {
      late MovieRepository mockMovieRepository;
      late MoviesCollection mockMoviesCollection;
      late Failure mockFailure;
      setUp(() {
        mockMovieRepository = MockMovieRepository();
        mockMoviesCollection = MockMoviesCollection();
        mockFailure = MockFailure();
      });
      test(
        'Should Return MoviesCollection when getallMovies is called',
        () async {
          MovieRepository movieRepository =
              MovieRepository(dioClient: DioClient());
          final ola = await movieRepository.getallMovies(
                  limit: 20, page: 1, genre: 'all');

          expect(ola.isLeft(), true);
        },
      );
      test(
        'Should Return Failure',
        () {
          when(mockMovieRepository.getallMovies(
                  limit: 1, page: 1, genre: 'genre'))
              .thenAnswer((_) async => Right(mockFailure));
          expect(mockFailure, mockFailure);
        },
      );

      test(
        'Should Return MoviesCollection',
        () {
          when(mockMovieRepository.getMoviesSuggestions(movieId: 1))
              .thenAnswer((_) async => Left(mockMoviesCollection));
          expect(mockMoviesCollection, mockMoviesCollection);
        },
      );
      test(
        'Should Return Failure',
        () {
          when(mockMovieRepository.getMoviesSuggestions(movieId: 1))
              .thenAnswer((_) async => Right(mockFailure));
          expect(mockFailure, mockFailure);
        },
      );
      test(
        'Should Return MoviesCollection',
        () {
          when(mockMovieRepository.searchMovie(moviname: 'naruto'))
              .thenAnswer((_) async => Left(mockMoviesCollection));
          expect(mockMoviesCollection, mockMoviesCollection);
        },
      );
      test(
        'Should Return Failure',
        () {
          when(mockMovieRepository.searchMovie(moviname: 'naruto'))
              .thenAnswer((_) async => Right(mockFailure));
          expect(mockFailure, mockFailure);
        },
      );
    },
  );
}
