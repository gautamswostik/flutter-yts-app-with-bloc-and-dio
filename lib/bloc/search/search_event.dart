part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchMovieEvent extends SearchEvent {
  final String movieName;

  const SearchMovieEvent({required this.movieName});

  @override
  List<Object> get props => [movieName];
}
