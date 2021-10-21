part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class MoviesInitialEvent extends MoviesEvent {
  final bool hadReachedMax;
  final int page;
  const MoviesInitialEvent({
    required this.hadReachedMax,
    required this.page,
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
