import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

class MockYtsApiRepository extends Mock implements MovieRepository {}

class MockMovies extends Mock implements MoviesCollection {}

class MockFailure extends Mock implements Failure {}

void main() {
  group('Testing Fetch movies from YTS API', () {
    late MoviesBloc moviesBloc;
    late MovieRepository mockYtsApiRepository;
    late MoviesCollection mockMovies;
    setUp(
      () {
        moviesBloc = MoviesBloc();
        mockYtsApiRepository = MockYtsApiRepository();
        mockMovies = const MoviesCollection();
      },
    );
    test(
      'Initial state is MoviesLoading',
      () {
        expect(moviesBloc.state,
            const MoviesInitial(initialMessage: 'Movies Loading'));
      },
    );

    blocTest<MoviesBloc, MoviesState>(
      'Should emit[MoviesInitial and MovieLoaded]',
      build: () => moviesBloc,
      act: (bloc) async {
        bloc.add(const MoviesInitialEvent(isInitialFetch: true));
        when(mockYtsApiRepository.getallMovies(
          limit: 20,
          page: 1,
          genre: 'all',
        )).thenAnswer((_) async => const Left(MoviesCollection()));
      },
      expect: () => [
        isA<MoviesInitial>(),
        isA<MoviesLoaded>()
        // const MoviesInitial(initialMessage: 'Movies Loading...'),
        // const MoviesLoaded(moviesCollection: <MockMovies>[]),
      ],
      verify: (bloc) {},
    );
    tearDown(() {
      moviesBloc.close();
    });
  });
}
