import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/search/search_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group('Testing Search Bloc', () {
    late SearchBloc searchBloc;
    late MovieRepository mockMovieRepository;
    late MoviesCollection moviesCollection;
    late Failure mockFailure;

    setUp(() {
      searchBloc = MockSearchBloc();
      mockMovieRepository = MockMovieRepository();
      moviesCollection = MockMoviesCollection();
      mockFailure = MockFailure();
    });
    test(
      'Should Emit SearchInitial',
      () {
        when(searchBloc.state).thenReturn(const SearchInitial());

        expect(searchBloc.state, isA<SearchInitial>());

        verify(searchBloc.state);
      },
    );
    blocTest<SearchBloc, SearchState>(
      'Should emit [SearchLoading and SearchLoaded]',
      setUp: () {
        when(mockMovieRepository.searchMovie(moviname: 'naruto'))
            .thenAnswer((_) async => Left(moviesCollection));
      },
      build: () => SearchBloc(service: mockMovieRepository),
      act: (bloc) {
        bloc.add(const SearchMovieEvent(movieName: 'naruto'));
      },
      expect: () => [
        isA<SearchLoading>(),
        isA<SearchLoaded>(),
      ],
      verify: (bloc) {
        mockMovieRepository.searchMovie(moviname: 'naruto');
      },
    );
    blocTest<SearchBloc, SearchState>(
        'Should emit  [SearchLoading and SearchError]',
        setUp: () {
          when(
            mockMovieRepository.searchMovie(moviname: 'boruto'),
          ).thenAnswer((_) async => Right(mockFailure));
        },
        build: () => SearchBloc(service: mockMovieRepository),
        act: (bloc) {
          bloc.add(const SearchMovieEvent(movieName: 'boruto'));
        },
        expect: () => [
              isA<SearchLoading>(),
              isA<SearchError>(),
            ],
        verify: (bloc) {
          mockMovieRepository.searchMovie(moviname: 'boruto');
        });

    tearDown(() {
      searchBloc.close();
    });
  });
}
