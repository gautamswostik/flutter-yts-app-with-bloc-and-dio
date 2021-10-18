import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/app/api_provider.dart';
import 'package:yts_bloc_2021/app/failure.dart';
import 'package:yts_bloc_2021/model/movies.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchInitial(initialMessage: 'Searching ...')) {
    on<SearchEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );

    on<SearchMovieEvent>(
      (event, emit) async {
        final service = MovieRepository(Dio());

        emit(const SearchInitial(initialMessage: 'Searching ...'));

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
