import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchInitial()) {
    on<SearchEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );

    on<SearchInitialEvent>(
      (event, emit) => emit(const SearchInitial()),
    );

    on<SearchMovieEvent>(
      (event, emit) async {
        final service = MovieRepository();

          emit(const SearchLoading(message: 'Searching ...'));

          final moviesCollection =
              await service.searchMovie(moviname: event.movieName);
          emit(
            moviesCollection.fold(
              (l) => SearchLoaded(l),
              (r) => SearchError(r),
            ),
          );
      },
    );
  }
}
