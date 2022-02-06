part of 'fav_movies_bloc.dart';

abstract class FavMoviesEvent extends Equatable {
  const FavMoviesEvent();

  @override
  List<Object> get props => [];
}

class IsFavMovie extends FavMoviesEvent {
  final num movieId;

  const IsFavMovie({required this.movieId});

  @override
  List<Object> get props => [movieId];
}

class SaveMovie extends FavMoviesEvent {
  final FavMovies movie;

  const SaveMovie({required this.movie});

  @override
  List<Object> get props => [movie];
}

class DeleteFavMovie extends FavMoviesEvent {
  const DeleteFavMovie({required this.movieId});
  final num movieId;

  @override
  List<Object> get props => [movieId];
}
