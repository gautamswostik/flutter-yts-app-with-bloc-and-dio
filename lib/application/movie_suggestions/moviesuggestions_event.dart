part of 'moviesuggestions_bloc.dart';

abstract class MoviesuggestionsEvent extends Equatable {
  const MoviesuggestionsEvent();

  @override
  List<Object> get props => [];
}

class MoviesSuggestionInitialEvent extends MoviesuggestionsEvent {
  const MoviesSuggestionInitialEvent();

  @override
  List<Object> get props => [];
}
