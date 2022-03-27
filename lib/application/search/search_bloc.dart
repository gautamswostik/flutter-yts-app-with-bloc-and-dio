import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  MovieRepository service;
  SearchBloc({required this.service}) : super(const SearchInitial()) {
    on<SearchEvent>(
      (event, emit) {},
    );

    on<SearchInitialEvent>(
      (event, emit) => emit(const SearchInitial()),
    );

    on<SearchMovieEvent>(
      (event, emit) async {
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
