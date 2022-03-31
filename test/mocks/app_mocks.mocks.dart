// Mocks generated by Mockito 5.1.0 from annotations
// in yts_bloc_2021/test/mocks/app_mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i14;

import 'package:bloc/bloc.dart' as _i15;
import 'package:dartz/dartz.dart' as _i10;
import 'package:dio/dio.dart' as _i13;
import 'package:mockito/mockito.dart' as _i1;
import 'package:yts_bloc_2021/app_setup/dio/dio_client.dart' as _i9;
import 'package:yts_bloc_2021/application/core/entities/failure.dart' as _i12;
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart'
    as _i7;
import 'package:yts_bloc_2021/application/get_fav_movies/get_fav_movies_bloc.dart'
    as _i8;
import 'package:yts_bloc_2021/application/movie_suggestions/moviesuggestions_bloc.dart'
    as _i5;
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart' as _i3;
import 'package:yts_bloc_2021/application/search/search_bloc.dart' as _i4;
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart'
    as _i16;
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_torrent.dart'
    as _i17;
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart'
    as _i6;
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart' as _i11;
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeMovieRepository_0 extends _i1.Fake implements _i2.MovieRepository {}

class _FakeMoviesState_1 extends _i1.Fake implements _i3.MoviesState {}

class _FakeSearchState_2 extends _i1.Fake implements _i4.SearchState {}

class _FakeMoviesuggestionsState_3 extends _i1.Fake
    implements _i5.MoviesuggestionsState {}

class _FakeFavouriteMoviesRepository_4 extends _i1.Fake
    implements _i6.FavouriteMoviesRepository {}

class _FakeFavMoviesState_5 extends _i1.Fake implements _i7.FavMoviesState {}

class _FakeGetFavMoviesState_6 extends _i1.Fake
    implements _i8.GetFavMoviesState {}

class _FakeDioClient_7 extends _i1.Fake implements _i9.DioClient {}

class _FakeEither_8<L, R> extends _i1.Fake implements _i10.Either<L, R> {}

class _Fake$MoviesCollectionCopyWith_9<$Res> extends _i1.Fake
    implements _i11.$MoviesCollectionCopyWith<$Res> {}

class _Fake$MoviesCopyWith_10<$Res> extends _i1.Fake
    implements _i11.$MoviesCopyWith<$Res> {}

class _FakeFailureType_11 extends _i1.Fake implements _i12.FailureType {}

class _FakeDio_12 extends _i1.Fake implements _i13.Dio {}

/// A class which mocks [MoviesBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesBloc extends _i1.Mock implements _i3.MoviesBloc {
  MockMoviesBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get service =>
      (super.noSuchMethod(Invocation.getter(#service),
          returnValue: _FakeMovieRepository_0()) as _i2.MovieRepository);
  @override
  set service(_i2.MovieRepository? _service) =>
      super.noSuchMethod(Invocation.setter(#service, _service),
          returnValueForMissingStub: null);
  @override
  int get page =>
      (super.noSuchMethod(Invocation.getter(#page), returnValue: 0) as int);
  @override
  set page(int? _page) => super.noSuchMethod(Invocation.setter(#page, _page),
      returnValueForMissingStub: null);
  @override
  _i3.MoviesState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeMoviesState_1()) as _i3.MoviesState);
  @override
  _i14.Stream<_i3.MoviesState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.MoviesState>.empty())
          as _i14.Stream<_i3.MoviesState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i3.MoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i3.MoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i3.MoviesState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i3.MoviesEvent>(
          _i15.EventHandler<E, _i3.MoviesState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i3.MoviesEvent, _i3.MoviesState>? transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> close() => (super.noSuchMethod(
      Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  void onChange(_i15.Change<_i3.MoviesState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [SearchBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchBloc extends _i1.Mock implements _i4.SearchBloc {
  MockSearchBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get service =>
      (super.noSuchMethod(Invocation.getter(#service),
          returnValue: _FakeMovieRepository_0()) as _i2.MovieRepository);
  @override
  set service(_i2.MovieRepository? _service) =>
      super.noSuchMethod(Invocation.setter(#service, _service),
          returnValueForMissingStub: null);
  @override
  _i4.SearchState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeSearchState_2()) as _i4.SearchState);
  @override
  _i14.Stream<_i4.SearchState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i4.SearchState>.empty())
          as _i14.Stream<_i4.SearchState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i4.SearchEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i4.SearchEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i4.SearchState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i4.SearchEvent>(
          _i15.EventHandler<E, _i4.SearchState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i4.SearchEvent, _i4.SearchState>? transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> close() => (super.noSuchMethod(
      Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  void onChange(_i15.Change<_i4.SearchState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [MoviesuggestionsBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesuggestionsBloc extends _i1.Mock
    implements _i5.MoviesuggestionsBloc {
  MockMoviesuggestionsBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get service =>
      (super.noSuchMethod(Invocation.getter(#service),
          returnValue: _FakeMovieRepository_0()) as _i2.MovieRepository);
  @override
  set service(_i2.MovieRepository? _service) =>
      super.noSuchMethod(Invocation.setter(#service, _service),
          returnValueForMissingStub: null);
  @override
  _i5.MoviesuggestionsState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
              returnValue: _FakeMoviesuggestionsState_3())
          as _i5.MoviesuggestionsState);
  @override
  _i14.Stream<_i5.MoviesuggestionsState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i5.MoviesuggestionsState>.empty())
          as _i14.Stream<_i5.MoviesuggestionsState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i5.MoviesuggestionsEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i5.MoviesuggestionsEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i5.MoviesuggestionsState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i5.MoviesuggestionsEvent>(
          _i15.EventHandler<E, _i5.MoviesuggestionsState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i5.MoviesuggestionsEvent, _i5.MoviesuggestionsState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> close() => (super.noSuchMethod(
      Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  void onChange(_i15.Change<_i5.MoviesuggestionsState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [FavMoviesBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockFavMoviesBloc extends _i1.Mock implements _i7.FavMoviesBloc {
  MockFavMoviesBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FavouriteMoviesRepository get favMoviesRepo =>
      (super.noSuchMethod(Invocation.getter(#favMoviesRepo),
              returnValue: _FakeFavouriteMoviesRepository_4())
          as _i6.FavouriteMoviesRepository);
  @override
  set favMoviesRepo(_i6.FavouriteMoviesRepository? _favMoviesRepo) =>
      super.noSuchMethod(Invocation.setter(#favMoviesRepo, _favMoviesRepo),
          returnValueForMissingStub: null);
  @override
  _i7.FavMoviesState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeFavMoviesState_5()) as _i7.FavMoviesState);
  @override
  _i14.Stream<_i7.FavMoviesState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i7.FavMoviesState>.empty())
          as _i14.Stream<_i7.FavMoviesState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i7.FavMoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i7.FavMoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i7.FavMoviesState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i7.FavMoviesEvent>(
          _i15.EventHandler<E, _i7.FavMoviesState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i7.FavMoviesEvent, _i7.FavMoviesState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> close() => (super.noSuchMethod(
      Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  void onChange(_i15.Change<_i7.FavMoviesState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [GetFavMoviesBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetFavMoviesBloc extends _i1.Mock implements _i8.GetFavMoviesBloc {
  MockGetFavMoviesBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FavouriteMoviesRepository get favMoviesRepo =>
      (super.noSuchMethod(Invocation.getter(#favMoviesRepo),
              returnValue: _FakeFavouriteMoviesRepository_4())
          as _i6.FavouriteMoviesRepository);
  @override
  set favMoviesRepo(_i6.FavouriteMoviesRepository? _favMoviesRepo) =>
      super.noSuchMethod(Invocation.setter(#favMoviesRepo, _favMoviesRepo),
          returnValueForMissingStub: null);
  @override
  _i8.GetFavMoviesState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
          returnValue: _FakeGetFavMoviesState_6()) as _i8.GetFavMoviesState);
  @override
  _i14.Stream<_i8.GetFavMoviesState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i8.GetFavMoviesState>.empty())
          as _i14.Stream<_i8.GetFavMoviesState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i8.GetFavMoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i8.GetFavMoviesEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i8.GetFavMoviesState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i8.GetFavMoviesEvent>(
          _i15.EventHandler<E, _i8.GetFavMoviesState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i8.GetFavMoviesEvent, _i8.GetFavMoviesState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> close() => (super.noSuchMethod(
      Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  void onChange(_i15.Change<_i8.GetFavMoviesState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i2.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.DioClient get dioClient =>
      (super.noSuchMethod(Invocation.getter(#dioClient),
          returnValue: _FakeDioClient_7()) as _i9.DioClient);
  @override
  _i14.Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>> getallMovies(
          {int? limit, int? page, String? genre}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getallMovies, [], {#limit: limit, #page: page, #genre: genre}),
          returnValue:
              Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>.value(
                  _FakeEither_8<_i11.MoviesCollection, _i12.Failure>())) as _i14
          .Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>);
  @override
  _i14.Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>
      getMoviesSuggestions({int? movieId}) => (super.noSuchMethod(
          Invocation.method(#getMoviesSuggestions, [], {#movieId: movieId}),
          returnValue:
              Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>.value(
                  _FakeEither_8<_i11.MoviesCollection, _i12.Failure>())) as _i14
          .Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>);
  @override
  _i14.Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>> searchMovie(
          {String? moviname}) =>
      (super.noSuchMethod(
          Invocation.method(#searchMovie, [], {#moviname: moviname}),
          returnValue:
              Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>.value(
                  _FakeEither_8<_i11.MoviesCollection, _i12.Failure>())) as _i14
          .Future<_i10.Either<_i11.MoviesCollection, _i12.Failure>>);
}

/// A class which mocks [FavouriteMoviesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockFavouriteMoviesRepository extends _i1.Mock
    implements _i6.FavouriteMoviesRepository {
  MockFavouriteMoviesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i14.Future<_i10.Either<_i10.Unit, String>> saveMovie(
          {_i16.FavMovies? favMovies}) =>
      (super.noSuchMethod(
              Invocation.method(#saveMovie, [], {#favMovies: favMovies}),
              returnValue: Future<_i10.Either<_i10.Unit, String>>.value(
                  _FakeEither_8<_i10.Unit, String>()))
          as _i14.Future<_i10.Either<_i10.Unit, String>>);
  @override
  _i14.Future<_i10.Either<List<_i16.FavMovies>, String>> getMovies() =>
      (super.noSuchMethod(Invocation.method(#getMovies, []),
          returnValue: Future<_i10.Either<List<_i16.FavMovies>, String>>.value(
              _FakeEither_8<List<_i16.FavMovies>, String>())) as _i14
          .Future<_i10.Either<List<_i16.FavMovies>, String>>);
  @override
  _i14.Future<bool> isMovieSaved({num? movieId}) => (super.noSuchMethod(
      Invocation.method(#isMovieSaved, [], {#movieId: movieId}),
      returnValue: Future<bool>.value(false)) as _i14.Future<bool>);
  @override
  _i14.Future<_i10.Either<_i10.Unit, String>> delete({num? movieId}) =>
      (super.noSuchMethod(Invocation.method(#delete, [], {#movieId: movieId}),
              returnValue: Future<_i10.Either<_i10.Unit, String>>.value(
                  _FakeEither_8<_i10.Unit, String>()))
          as _i14.Future<_i10.Either<_i10.Unit, String>>);
  @override
  _i14.Future<_i10.Either<_i10.Unit, String>> deleteAll() =>
      (super.noSuchMethod(Invocation.method(#deleteAll, []),
              returnValue: Future<_i10.Either<_i10.Unit, String>>.value(
                  _FakeEither_8<_i10.Unit, String>()))
          as _i14.Future<_i10.Either<_i10.Unit, String>>);
}

/// A class which mocks [MoviesCollection].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesCollection extends _i1.Mock implements _i11.MoviesCollection {
  MockMoviesCollection() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get status =>
      (super.noSuchMethod(Invocation.getter(#status), returnValue: '')
          as String);
  @override
  String get statusMessage =>
      (super.noSuchMethod(Invocation.getter(#statusMessage), returnValue: '')
          as String);
  @override
  _i11.$MoviesCollectionCopyWith<_i11.MoviesCollection> get copyWith =>
      (super.noSuchMethod(Invocation.getter(#copyWith),
              returnValue:
                  _Fake$MoviesCollectionCopyWith_9<_i11.MoviesCollection>())
          as _i11.$MoviesCollectionCopyWith<_i11.MoviesCollection>);
  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}

/// A class which mocks [Movies].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovies extends _i1.Mock implements _i11.Movies {
  MockMovies() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: 0) as int);
  @override
  String get url =>
      (super.noSuchMethod(Invocation.getter(#url), returnValue: '') as String);
  @override
  String get imdbCode =>
      (super.noSuchMethod(Invocation.getter(#imdbCode), returnValue: '')
          as String);
  @override
  String get title =>
      (super.noSuchMethod(Invocation.getter(#title), returnValue: '')
          as String);
  @override
  String get titleEnglish =>
      (super.noSuchMethod(Invocation.getter(#titleEnglish), returnValue: '')
          as String);
  @override
  String get titleLong =>
      (super.noSuchMethod(Invocation.getter(#titleLong), returnValue: '')
          as String);
  @override
  String get slug =>
      (super.noSuchMethod(Invocation.getter(#slug), returnValue: '') as String);
  @override
  int get year =>
      (super.noSuchMethod(Invocation.getter(#year), returnValue: 0) as int);
  @override
  double get rating =>
      (super.noSuchMethod(Invocation.getter(#rating), returnValue: 0.0)
          as double);
  @override
  int get runtime =>
      (super.noSuchMethod(Invocation.getter(#runtime), returnValue: 0) as int);
  @override
  List<String> get genres =>
      (super.noSuchMethod(Invocation.getter(#genres), returnValue: <String>[])
          as List<String>);
  @override
  String get summary =>
      (super.noSuchMethod(Invocation.getter(#summary), returnValue: '')
          as String);
  @override
  String get descriptionFull =>
      (super.noSuchMethod(Invocation.getter(#descriptionFull), returnValue: '')
          as String);
  @override
  String get synopsis =>
      (super.noSuchMethod(Invocation.getter(#synopsis), returnValue: '')
          as String);
  @override
  String get ytTrailerCode =>
      (super.noSuchMethod(Invocation.getter(#ytTrailerCode), returnValue: '')
          as String);
  @override
  String get language =>
      (super.noSuchMethod(Invocation.getter(#language), returnValue: '')
          as String);
  @override
  String get mpaRating =>
      (super.noSuchMethod(Invocation.getter(#mpaRating), returnValue: '')
          as String);
  @override
  String get backgroundImage =>
      (super.noSuchMethod(Invocation.getter(#backgroundImage), returnValue: '')
          as String);
  @override
  String get backgroundImageOriginal =>
      (super.noSuchMethod(Invocation.getter(#backgroundImageOriginal),
          returnValue: '') as String);
  @override
  String get smallCoverImage =>
      (super.noSuchMethod(Invocation.getter(#smallCoverImage), returnValue: '')
          as String);
  @override
  String get mediumCoverImage =>
      (super.noSuchMethod(Invocation.getter(#mediumCoverImage), returnValue: '')
          as String);
  @override
  String get largeCoverImage =>
      (super.noSuchMethod(Invocation.getter(#largeCoverImage), returnValue: '')
          as String);
  @override
  String get state =>
      (super.noSuchMethod(Invocation.getter(#state), returnValue: '')
          as String);
  @override
  List<_i11.Torrents> get torrents =>
      (super.noSuchMethod(Invocation.getter(#torrents),
          returnValue: <_i11.Torrents>[]) as List<_i11.Torrents>);
  @override
  String get dateUploaded =>
      (super.noSuchMethod(Invocation.getter(#dateUploaded), returnValue: '')
          as String);
  @override
  int get dateUploadedUnix =>
      (super.noSuchMethod(Invocation.getter(#dateUploadedUnix), returnValue: 0)
          as int);
  @override
  _i11.$MoviesCopyWith<_i11.Movies> get copyWith =>
      (super.noSuchMethod(Invocation.getter(#copyWith),
              returnValue: _Fake$MoviesCopyWith_10<_i11.Movies>())
          as _i11.$MoviesCopyWith<_i11.Movies>);
  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}

/// A class which mocks [FavMovies].
///
/// See the documentation for Mockito's code generation for more information.
class MockFavMovies extends _i1.Mock implements _i16.FavMovies {
  MockFavMovies() {
    _i1.throwOnMissingStub(this);
  }

  @override
  num get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: 0) as num);
  @override
  String get title =>
      (super.noSuchMethod(Invocation.getter(#title), returnValue: '')
          as String);
  @override
  String get posterBackground =>
      (super.noSuchMethod(Invocation.getter(#posterBackground), returnValue: '')
          as String);
  @override
  String get poster =>
      (super.noSuchMethod(Invocation.getter(#poster), returnValue: '')
          as String);
  @override
  String get ytcode =>
      (super.noSuchMethod(Invocation.getter(#ytcode), returnValue: '')
          as String);
  @override
  List<String> get genres =>
      (super.noSuchMethod(Invocation.getter(#genres), returnValue: <String>[])
          as List<String>);
  @override
  String get description =>
      (super.noSuchMethod(Invocation.getter(#description), returnValue: '')
          as String);
  @override
  num get rating =>
      (super.noSuchMethod(Invocation.getter(#rating), returnValue: 0) as num);
  @override
  String get imdbcode =>
      (super.noSuchMethod(Invocation.getter(#imdbcode), returnValue: '')
          as String);
  @override
  List<_i17.TorrentLocal> get torrents =>
      (super.noSuchMethod(Invocation.getter(#torrents),
          returnValue: <_i17.TorrentLocal>[]) as List<_i17.TorrentLocal>);
  @override
  String get largeCoverImage =>
      (super.noSuchMethod(Invocation.getter(#largeCoverImage), returnValue: '')
          as String);
  @override
  bool get isInBox =>
      (super.noSuchMethod(Invocation.getter(#isInBox), returnValue: false)
          as bool);
  @override
  _i14.Future<void> save() => (super.noSuchMethod(Invocation.method(#save, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
  @override
  _i14.Future<void> delete() => (super.noSuchMethod(
      Invocation.method(#delete, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i14.Future<void>);
}

/// A class which mocks [Failure].
///
/// See the documentation for Mockito's code generation for more information.
class MockFailure extends _i1.Mock implements _i12.Failure {
  MockFailure() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get reason =>
      (super.noSuchMethod(Invocation.getter(#reason), returnValue: '')
          as String);
  @override
  _i12.FailureType get type => (super.noSuchMethod(Invocation.getter(#type),
      returnValue: _FakeFailureType_11()) as _i12.FailureType);
}

/// A class which mocks [DioClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioClient extends _i1.Mock implements _i9.DioClient {
  MockDioClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Dio dioClient() => (super.noSuchMethod(Invocation.method(#dioClient, []),
      returnValue: _FakeDio_12()) as _i13.Dio);
}
