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
  final MoviesCollection moviesCollection;

  const MoviesLoaded(this.moviesCollection);

  @override
  List<Object> get props => [moviesCollection];
}

class MoviesPaginate extends MoviesState {
  final List<Movies> moviesCollection;

  const MoviesPaginate(this.moviesCollection);

  @override
  List<Object> get props => [moviesCollection];
}

class PaginationLoading extends MoviesState {
  const PaginationLoading();

  @override
  List<Object> get props => [];
}

class MoviesError extends MoviesState {
  final Failure failure;

  const MoviesError(this.failure);

  @override
  List<Object> get props => [failure];
}
