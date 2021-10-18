part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {
  final String initialMessage;

  const SearchInitial({required this.initialMessage});

  @override
  List<Object> get props => [initialMessage];
}

class SearchLoaded extends SearchState {
  final MoviesCollection moviesCollection;

  const SearchLoaded(this.moviesCollection);

  @override
  List<Object> get props => [moviesCollection];
}

class SearchError extends SearchState {
  final Failure failure;

  const SearchError(this.failure);

  @override
  List<Object> get props => [failure];
}
