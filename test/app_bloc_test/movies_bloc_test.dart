import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

import '../mocks/app_mocks.mocks.dart';



void main() {
  group('Testing Fetch movies from YTS API', () {
    late MoviesBloc moviesBloc;
    late MovieRepository mockYtsApiRepository;
    late MoviesCollection mockMovies;
    late Failure mockFailure;
    setUp(
      () {
        moviesBloc = MockMoviesBloc();
        mockYtsApiRepository = MockMovieRepository();
        mockMovies = MockMoviesCollection();
        mockFailure = MockFailure();
      },
    );
    test(
      'Initial state is MoviesLoading',
      () {
        when(moviesBloc.state).thenReturn(const MoviesInitial(
          initialMessage: 'Movies Loading',
        ));
        expect(moviesBloc.state, isA<MoviesInitial>());

        verify(moviesBloc.state);
      },
    );

    // ! Orr
    test(
      'Initial state is MoviesLoading',
      () {
        MoviesBloc bloc = MoviesBloc(service: mockYtsApiRepository);

        expect(bloc.state, isA<MoviesInitial>());
      },
    );
    test(
      'Should Return Movies Collection',
      () async {
        when(mockYtsApiRepository.getMoviesSuggestions(movieId: 1))
            .thenAnswer((_) async => Left(mockMovies));
        expect(await mockYtsApiRepository.getMoviesSuggestions(movieId: 1),
            Left(mockMovies));
        verify(await mockYtsApiRepository.getMoviesSuggestions(movieId: 1));
      },
    );

    test(
      'Should Return Movies Collection',
      () async {
        when(
          mockYtsApiRepository.getallMovies(
            limit: 20,
            page: 1,
            genre: 'all',
          ),
        ).thenAnswer(
          (_) async => Right(mockFailure),
        );
        expect(
          await mockYtsApiRepository.getallMovies(
            limit: 20,
            page: 1,
            genre: 'all',
          ),
          Right(mockFailure),
        );
        verify(
          await mockYtsApiRepository.getallMovies(
            limit: 20,
            page: 1,
            genre: 'all',
          ),
        );
      },
    );

    blocTest<MoviesBloc, MoviesState>(
      'Should emit[MoviesInitial and MovieLoaded]',
      setUp: () {
        when(mockYtsApiRepository.getallMovies(
          limit: 20,
          page: 1,
          genre: 'all',
        )).thenAnswer((_) async => Right(mockFailure));
      },
      build: () => MoviesBloc(service: mockYtsApiRepository),
      act: (bloc) => bloc.add(const MoviesInitialEvent(isInitialFetch: true)),
      expect: () => [
        isA<MoviesInitial>(),
        isA<MoviesError>(),
      ],
      verify: (bloc) {
        mockYtsApiRepository.getallMovies(
          limit: 20,
          page: 1,
          genre: 'all',
        );
      },
    );

    blocTest<MoviesBloc, MoviesState>(
      'Should emit[MoviesInitial and MovieLoaded]',
      setUp: () {
        when(mockYtsApiRepository.getallMovies(
          limit: 20,
          page: 1,
          genre: 'all',
        )).thenAnswer((_) async => const Left(MoviesCollection()));
      },
      build: () => MoviesBloc(service: mockYtsApiRepository),
      act: (bloc) => bloc.add(const MoviesInitialEvent(isInitialFetch: true)),
      expect: () => [
        isA<MoviesInitial>(),
        isA<MoviesLoaded>(),
      ],
      verify: (bloc) {
        mockYtsApiRepository.getallMovies(
          limit: 20,
          page: 1,
          genre: 'all',
        );
      },
    );

    // blocTest<MoviesBloc, MoviesState>(
    //   'Should emit[MoviesInitial and MovieLoaded]',
    //   setUp: () {
    //     when(mockYtsApiRepository.getallMovies(
    //       limit: 20,
    //       page: 1,
    //       genre: 'all',
    //     )).thenAnswer((_) async => Left(mockMovies));
    //   },
    //   build: () => MoviesBloc(service: mockYtsApiRepository),
    //   act: (bloc) => bloc.add(const MoviesInitialEvent(isInitialFetch: true)),
    //   expect: () => [
    //     isA<MoviesInitial>(),
    //     isA<MoviesLoaded>(),
    //     // isA<MoviesError>(),
    //   ],
    //   verify: (bloc) {
    //     mockYtsApiRepository.getallMovies(
    //       limit: 20,
    //       page: 1,
    //       genre: 'all',
    //     );
    //   },
    // );
    tearDown(() {
      moviesBloc.close();
    });
  });
}
