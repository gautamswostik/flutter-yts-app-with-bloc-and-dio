part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class MoviesInitialEvent extends MoviesEvent {
  final bool isInitialFetch;
  final List<Movies>? movies;
  const MoviesInitialEvent({
    required this.isInitialFetch,
    this.movies,
  });

  @override
  List<Object> get props => [];
}

class MoviesByGenreEvent extends MoviesEvent {
  final String genre;
  const MoviesByGenreEvent({required this.genre});

  @override
  List<Object> get props => [];
}

