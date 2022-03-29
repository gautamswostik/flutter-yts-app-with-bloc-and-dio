import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/get_fav_movies/get_fav_movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group(
    'Testing GetFavMoviesBloc',
    () {
      late GetFavMoviesBloc mockGetFavMoviesBloc;
      late FavouriteMoviesRepository mockFavouriteMoviesRepository;
      late FavMovies mockFavMovies;
      setUp(() {
        mockGetFavMoviesBloc = MockGetFavMoviesBloc();
        mockFavouriteMoviesRepository = MockFavouriteMoviesRepository();
        mockFavMovies = MockFavMovies();
      });
      test(
        'The GetFavMoviesBloc should emit GetFavMoviesInitial as its initial state',
        () {
          when(mockGetFavMoviesBloc.state).thenReturn(GetFavMoviesInitial());

          expect(mockGetFavMoviesBloc.state, isA<GetFavMoviesInitial>());

          verify(mockGetFavMoviesBloc.state);
        },
      );

      blocTest<GetFavMoviesBloc, GetFavMoviesState>(
        'When event GetFavMovies is called it should emit FavMoviesLoaded',
        setUp: () {
          when(mockFavouriteMoviesRepository.getMovies())
              .thenAnswer((_) async => Left([mockFavMovies]));
        },
        build: () =>
            GetFavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
        act: (bloc) => bloc.add(const GetFavMovies()),
        expect: () => [isA<FavMoviesLoaded>()],
        verify: (bloc) {
          mockFavouriteMoviesRepository.getMovies();
        },
      );

      blocTest<GetFavMoviesBloc, GetFavMoviesState>(
        'When event GetFavMovies is called it should emit Err',
        setUp: () {
          when(mockFavouriteMoviesRepository.getMovies())
              .thenAnswer((_) async => const Right('error'));
        },
        build: () =>
            GetFavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
        act: (bloc) => bloc.add(const GetFavMovies()),
        expect: () => [isA<Err>()],
        verify: (bloc) {
          mockFavouriteMoviesRepository.getMovies();
        },
      );
      blocTest<GetFavMoviesBloc, GetFavMoviesState>(
        'When event DeleteMovies is called it should emit DeletedAllMovies',
        setUp: () {
          when(mockFavouriteMoviesRepository.deleteAll())
              .thenAnswer((_) async => const Left(unit));
        },
        build: () =>
            GetFavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
        act: (bloc) => bloc.add(const DeleteMovies()),
        expect: () => [isA<DeletedAllMovies>()],
        verify: (bloc) {
          mockFavouriteMoviesRepository.deleteAll();
        },
      );
      blocTest<GetFavMoviesBloc, GetFavMoviesState>(
        'When event DeleteMovies is called it should emit Err',
        setUp: () {
          when(mockFavouriteMoviesRepository.deleteAll())
              .thenAnswer((_) async => const Right('error'));
        },
        build: () =>
            GetFavMoviesBloc(favMoviesRepo: mockFavouriteMoviesRepository),
        act: (bloc) => bloc.add(const DeleteMovies()),
        expect: () => [isA<Err>()],
        verify: (bloc) {
          mockFavouriteMoviesRepository.deleteAll();
        },
      );
      tearDown(() {
        mockGetFavMoviesBloc.close();
      });
    },
  );
}
