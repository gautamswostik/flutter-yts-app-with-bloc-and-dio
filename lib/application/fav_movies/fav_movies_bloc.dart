import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

part 'fav_movies_event.dart';
part 'fav_movies_state.dart';

class FavMoviesBloc extends Bloc<FavMoviesEvent, FavMoviesState> {
  FavouriteMoviesRepository favMoviesRepo;
  FavMoviesBloc({required this.favMoviesRepo}) : super(FavMoviesInitial()) {
    on<FavMoviesEvent>((event, emit) {});

    on<IsFavMovie>(
      (event, emit) async {
        emit(FavMoviesLoading());
        final isFav = await favMoviesRepo.isMovieSaved(movieId: event.movieId);

        if (isFav) {
          emit(const IsFavMovieState());
        } else {
          emit(const NotFavMovieState());
        }
      },
    );
    on<SaveMovie>(
      (event, emit) async {
        emit(FavMoviesLoading());
        final saveMovie = await favMoviesRepo.saveMovie(favMovies: event.movie);

        saveMovie.fold(
          (success) {
            emit(const MovieSaved(message: 'Movie Saved'));
            emit(const IsFavMovieState());
          },
          (error) {
            emit(
              SomeError(message: error),
            );
          },
        );
      },
    );

    on<DeleteFavMovie>(
      (event, emit) async {
        emit(FavMoviesLoading());
        final delete = await favMoviesRepo.delete(movieId: event.movieId);

        delete.fold(
          (success) {
            emit(const MovieSaved(message: 'Movie Deleted'));
            emit(const NotFavMovieState());
          },
          (error) => emit(
            SomeError(message: error),
          ),
        );
      },
    );
  }
}
