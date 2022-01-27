part of 'moviesuggestions_bloc.dart';

abstract class MoviesuggestionsState extends Equatable {
  const MoviesuggestionsState();

  @override
  List<Object> get props => [];
}


class MoviesuggestionsInitial extends MoviesuggestionsState {
  final String initialMessage;

  const MoviesuggestionsInitial({required this.initialMessage});

  @override
  List<Object> get props => [initialMessage];
}

class MoviesuggestionsLoaded extends MoviesuggestionsState {
  final MoviesCollection moviesCollection;

  const MoviesuggestionsLoaded(this.moviesCollection);

  @override
  List<Object> get props => [moviesCollection];
}


class MoviesuggestionsError extends MoviesuggestionsState {
  final Failure failure;

  const MoviesuggestionsError(this.failure);

  @override
  List<Object> get props => [failure];
}
