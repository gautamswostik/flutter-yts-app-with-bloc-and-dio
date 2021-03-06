import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MovieRepository service;
  int page = 1;
  MoviesBloc({required this.service})
      : super(const MoviesInitial(initialMessage: 'Movies Loading')) {
    on<MoviesEvent>(
      (event, emit) async {},
    );
    on<MoviesInitialEvent>(
      (event, emit) async {
        if (event.isInitialFetch) {
          emit(const MoviesInitial(initialMessage: 'Movies Loading...'));
          page = 1;
        }

        final moviesCollection = await service.getallMovies(
          limit: 20,
          page: page,
          genre: 'all',
        );
        emit(
          moviesCollection.fold(
            (l) {
              //b = [a , b , c] c = [d, e, f]
              //[a] =[...b , ...b ]
              List<Movies> allmovies = [
                ...?event.movies,
                ...l.data?.movies ?? []
              ];
              return MoviesLoaded(
                moviesCollection: allmovies,
                isFetching: true,
              );
            },
            (r) => MoviesError(r),
          ),
        );
        page++;
      },
    );
    on<MoviesByGenreEvent>(
      (event, emit) async {
        int limit = 20;
        final moviesCollection = await service.getallMovies(
          limit: limit,
          page: page,
          genre: event.genre,
        );
        emit(
          moviesCollection.fold(
            (l) => MoviesLoaded(
              moviesCollection: l.data!.movies,
              isFetching: true,
            ),
            (r) => MoviesError(r),
          ),
        );
      },
    );
  }
}
