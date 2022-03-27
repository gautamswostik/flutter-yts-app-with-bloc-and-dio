import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group(
    'Testing MoviesuggestionsBloc',
    () {
      late MoviesuggestionsBloc mockMoviesuggestionsBloc;
      late MovieRepository mockMovieRepository;
      late MoviesCollection mockMoviesCollection;
      late Failure mockMailure;
      setUp(() {
        mockMoviesuggestionsBloc = MockMoviesuggestionsBloc();
        mockMovieRepository = MockMovieRepository();
        mockMoviesCollection = MockMoviesCollection();
        mockMailure = MockFailure();
      });
      test('This should return MoviesuggestionsInitial', () {
        when(mockMoviesuggestionsBloc.state).thenReturn(
            const MoviesuggestionsInitial(
                initialMessage: 'Suggestions Loading'));
        expect(
          mockMoviesuggestionsBloc.state,
          isA<MoviesuggestionsInitial>(),
        );
      });

      blocTest<MoviesuggestionsBloc, MoviesuggestionsState>(
        'On MoviesSuggestionInitialEvent is should Emit [MoviesuggestionsInitial and  MoviesuggestionsLoaded]',
        setUp: () {
          when(mockMovieRepository.getMoviesSuggestions(movieId: 1))
              .thenAnswer((_) async => Left(mockMoviesCollection));
        },
        build: () => MoviesuggestionsBloc(service: mockMovieRepository),
        act: (bloc) => bloc.add(const MoviesSuggestionInitialEvent()),
        expect: () => [
          isA<MoviesuggestionsInitial>(),
          isA<MoviesuggestionsLoaded>(),
        ],
        verify: (bloc) {
          mockMovieRepository.getMoviesSuggestions(movieId: 1);
        },
      );

      blocTest<MoviesuggestionsBloc, MoviesuggestionsState>(
          'On MoviesSuggestionInitialEvent is should Emit [MoviesuggestionsInitial and  MoviesuggestionsError]',
          setUp: () {
            when(mockMovieRepository.getMoviesSuggestions(movieId: 1))
                .thenAnswer((_) async => Right(mockMailure));
          },
          build: () => MoviesuggestionsBloc(service: mockMovieRepository),
          act: (bloc) => bloc.add(const MoviesSuggestionInitialEvent()),
          expect: () => [
                isA<MoviesuggestionsInitial>(),
                isA<MoviesuggestionsError>(),
              ],
          verify: (bloc) {});

      tearDown(() {
        mockMoviesuggestionsBloc.close();
      });
    },
  );
}
