part of 'get_fav_movies_bloc.dart';

abstract class GetFavMoviesEvent extends Equatable {
  const GetFavMoviesEvent();

  @override
  List<Object> get props => [];
}

class GetFavMovies extends GetFavMoviesEvent {
  const GetFavMovies();

  @override
  List<Object> get props => [];
}

class DeleteMovies extends GetFavMoviesEvent {
  const DeleteMovies();

  @override
  List<Object> get props => [];
}
