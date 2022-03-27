import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

import '../mocks/app_mocks.mocks.dart';

void main() {
  group('Testing FavMoviesBloc', () {
    late FavMoviesBloc favMoviesBloc;
    late FavouriteMoviesRepository favouriteMoviesRepository;
    setUp(() {
      favMoviesBloc = MockFavMoviesBloc();
      favouriteMoviesRepository = MockFavouriteMoviesRepository();
    });
    test('The bloc should emit FavMoviesInitial as Initialstate', () {
      when(favMoviesBloc.state).thenReturn(FavMoviesInitial());

      expect(favMoviesBloc.state, isA<FavMoviesInitial>());

      verify(favMoviesBloc.state);
    });
    tearDown(() {
      favMoviesBloc.close();
    });
  });
}
