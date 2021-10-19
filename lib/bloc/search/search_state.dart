part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {
  

  const SearchInitial();

  @override
  List<Object> get props => [];
}

class SearchLoading extends SearchState {
  final String message;

  const SearchLoading({required this.message});

  @override
  List<Object> get props => [message];
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
