part of 'get_fav_movies_bloc.dart';

abstract class GetFavMoviesState extends Equatable {
  const GetFavMoviesState();

  @override
  List<Object> get props => [];
}

class GetFavMoviesInitial extends GetFavMoviesState {}

class FavMoviesLoaded extends GetFavMoviesState {
  const FavMoviesLoaded({required this.favMovies});
  final List<FavMovies> favMovies;
  @override
  List<Object> get props => [favMovies];
}

class Err extends GetFavMoviesState {
  const Err({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}