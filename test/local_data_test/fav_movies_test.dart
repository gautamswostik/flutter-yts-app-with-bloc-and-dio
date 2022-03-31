import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group(
    'Testing Favourite movies Repository which are stored Locally',
    () {
      late FavouriteMoviesRepository mockFavouriteMoviesRepository;
      late FavMovies mockFavMovies;
      setUp(
        () {
          mockFavouriteMoviesRepository = MockFavouriteMoviesRepository();
          mockFavMovies = MockFavMovies();
        },
      );

      test(
        'The saveMovie method should return Unit',
        () async {
          final ola = await mockFavouriteMoviesRepository.saveMovie(
            favMovies: mockFavMovies,
          );
          expect(ola, const Left(unit));
        },
      );
    },
  );
}
