import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

class MockYtsApiRepository extends Mock implements MovieRepository {}

class MockMovies extends Mock implements Movies {}

class MockFailure extends Mock implements Failure {}

void main() {
  group('Testing Fetch movies from YTS API', () {
    MoviesBloc? moviesBloc;
    MockYtsApiRepository mockYtsApiRepository;
    setUp(
      () {
        moviesBloc = MoviesBloc();
        mockYtsApiRepository = MockYtsApiRepository();
      },
    );
    test(
      'Initial state is MoviesLoading',
      () {
        expect(moviesBloc?.state,
            const MoviesInitial(initialMessage: 'Movies Loading'));
        // emitsInOrder(
        //   [
        //     const MoviesInitial(initialMessage: 'Movies Loading'),
        //     MoviesError(MockFailure()),
        //     // const MoviesLoaded(moviesCollection: <MockMovies>[]),
        //   ],
        // );
      },
    );

    blocTest<MoviesBloc, MoviesState>(
      'Should Emit MovieLoaded',
      build: () => MoviesBloc(),
      act: (bloc) => bloc.add(const MoviesInitialEvent(isInitialFetch: true)),
      expect: () => [
        const MoviesInitial(initialMessage: 'Movies Loading...'),
        // const MoviesLoaded(moviesCollection: <MockMovies>[]),
      ],
      verify: (bloc) {},
    );
    tearDown(() {
      moviesBloc?.close();
    });
  });
}
