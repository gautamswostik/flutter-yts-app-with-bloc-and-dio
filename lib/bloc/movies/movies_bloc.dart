import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/app/api_provider.dart';
import 'package:yts_bloc_2021/app/failure.dart';

import 'package:yts_bloc_2021/model/movies.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesInitial(initialMessage: 'Movies Loading')) {
    on<MoviesEvent>(
      (event, emit) async {
        // TODO: implement event handler
      },
    );
    on<MoviesInitialEvent>(
      (event, emit) async {
        final service = MovieRepository(Dio());
        int page = 1;
        int limit = 50;

        emit(const MoviesInitial(initialMessage: 'Movies Loading...'));

        final moviesCollection = await service.getallMovies(
          limit: limit,
          page: page,
          genre: 'all',
        );
        emit(
          moviesCollection.fold(
            (l) => MoviesLoaded(l),
            (r) => MoviesError(r),
          ),
        );
      },
    );
    on<MoviesByGenreEvent>(
      (event, emit) async {
        final service = MovieRepository(Dio());
        int page = 1;
        int limit = 50;

        emit(const MoviesInitial(initialMessage: 'Movies Loading...'));

        final moviesCollection = await service.getallMovies(
          limit: limit,
          page: page,
          genre: event.genre,
        );
        emit(
          moviesCollection.fold(
            (l) => MoviesLoaded(l),
            (r) => MoviesError(r),
          ),
        );
      },
    );
  }
}
