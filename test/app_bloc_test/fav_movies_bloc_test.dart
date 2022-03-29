import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group('Testing FavMoviesBloc', () {
    late FavMoviesBloc favMoviesBloc;
    late FavouriteMoviesRepository mockFavouriteMoviesRepository;
    late FavMovies mockFavMovies;
    setUp(() {
      favMoviesBloc = MockFavMoviesBloc();
      mockFavouriteMoviesRepository = MockFavouriteMoviesRepository();
      mockFavMovies = MockFavMovies();
    });
    test('The bloc should emit FavMoviesInitial as Initialstate', () {
      when(favMoviesBloc.state).thenReturn(FavMoviesInitial());

      expect(favMoviesBloc.state, isA<FavMoviesInitial>());

      verify(favMoviesBloc.state);
    });

    blocTest<FavMoviesBloc, FavMoviesState>(
      'On IsFavMovie event, the bloc should emit [FavMoviesLoading and IsFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.isMovieSaved(movieId: 1))
            .thenAnswer((_) async => true);
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(const IsFavMovie(movieId: 1)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<IsFavMovieState>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.isMovieSaved(movieId: 1);
      },
    );
    blocTest<FavMoviesBloc, FavMoviesState>(
      'On IsFavMovie event, the bloc should emit [FavMoviesLoading and NotFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.isMovieSaved(movieId: 1))
            .thenAnswer((_) async => false);
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(const IsFavMovie(movieId: 1)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<NotFavMovieState>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.isMovieSaved(movieId: 1);
      },
    );
    blocTest<FavMoviesBloc, FavMoviesState>(
      'On SaveMovie event, the bloc should emit [FavMoviesLoading, MovieSaved and IsFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.saveMovie(favMovies: mockFavMovies))
            .thenAnswer((_) async => const Left(unit));
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(SaveMovie(movie: mockFavMovies)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<MovieSaved>(),
        isA<IsFavMovieState>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.saveMovie(favMovies: mockFavMovies);
      },
    );
    blocTest<FavMoviesBloc, FavMoviesState>(
      'On SaveMovie event, the bloc should emit [FavMoviesLoading, MovieSaved and IsFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.saveMovie(favMovies: mockFavMovies))
            .thenAnswer((_) async => const Right('error'));
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(SaveMovie(movie: mockFavMovies)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<SomeError>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.saveMovie(favMovies: mockFavMovies);
      },
    );
    blocTest<FavMoviesBloc, FavMoviesState>(
      'On DeleteFavMovie event, the bloc should emit [FavMoviesLoading, MovieSaved and NotFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.delete(movieId: 1))
            .thenAnswer((_) async => const Left(unit));
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(const DeleteFavMovie(movieId: 1)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<MovieSaved>(),
        isA<NotFavMovieState>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.delete(movieId: 1);
      },
    );
    blocTest<FavMoviesBloc, FavMoviesState>(
      'On DeleteFavMovie event, the bloc should emit [FavMoviesLoading, MovieSaved and NotFavMovieState]',
      setUp: () {
        when(mockFavouriteMoviesRepository.delete(movieId: 1))
            .thenAnswer((_) async => const Right('error'));
      },
      build: () => FavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
      act: (bloc) => bloc.add(const DeleteFavMovie(movieId: 1)),
      expect: () => [
        isA<FavMoviesLoading>(),
        isA<SomeError>(),
      ],
      verify: (bloc) {
        mockFavouriteMoviesRepository.delete(movieId: 1);
      },
    );
    tearDown(() {
      favMoviesBloc.close();
    });
  });
}
