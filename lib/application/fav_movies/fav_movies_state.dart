part of 'fav_movies_bloc.dart';

abstract class FavMoviesState extends Equatable {
  const FavMoviesState();

  @override
  List<Object> get props => [];
}

class FavMoviesInitial extends FavMoviesState {}

class FavMoviesLoading extends FavMoviesState {}

class IsFavMovieState extends FavMoviesState {
  const IsFavMovieState();

  @override
  List<Object> get props => [];
}

class NotFavMovieState extends FavMoviesState {
  const NotFavMovieState();

  @override
  List<Object> get props => [];
}

class FavMoviesLoaded extends FavMoviesState {
  const FavMoviesLoaded({required this.favMovies});
  final List<FavMovies> favMovies;
  @override
  List<Object> get props => [favMovies];
}

class SomeError extends FavMoviesState {
  const SomeError({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}

class MovieSaved extends FavMoviesState {
  const MovieSaved({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
