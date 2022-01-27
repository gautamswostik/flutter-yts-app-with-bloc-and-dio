part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {
  final String initialMessage;

  const MoviesInitial({required this.initialMessage});

  @override
  List<Object> get props => [initialMessage];
}

class MoviesLoaded extends MoviesState {
  final List<Movies> moviesCollection;
  final bool isFetching;
  const MoviesLoaded({
    required this.moviesCollection,
    this.isFetching = false,
  });

  @override
  List<Object> get props => [moviesCollection];
}

class MoviesError extends MoviesState {
  final Failure failure;

  const MoviesError(this.failure);

  @override
  List<Object> get props => [failure];
}
