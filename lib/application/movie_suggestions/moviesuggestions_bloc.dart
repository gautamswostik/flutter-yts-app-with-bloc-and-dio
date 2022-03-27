import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';

part 'moviesuggestions_event.dart';
part 'moviesuggestions_state.dart';

class MoviesuggestionsBloc
    extends Bloc<MoviesuggestionsEvent, MoviesuggestionsState> {
  MovieRepository service;
  MoviesuggestionsBloc({required this.service})
      : super(const MoviesuggestionsInitial(
            initialMessage: 'Suggestions Loading')) {
    on<MoviesuggestionsEvent>((event, emit) {});

    on<MoviesSuggestionInitialEvent>(
      (event, emit) async {
        int movieId = 1;

        emit(const MoviesuggestionsInitial(
            initialMessage: 'Suggestions Loading...'));

        final moviesCollection =
            await service.getMoviesSuggestions(movieId: movieId);
        emit(
          moviesCollection.fold(
            (l) => MoviesuggestionsLoaded(l),
            (r) => MoviesuggestionsError(r),
          ),
        );
      },
    );
  }
}
