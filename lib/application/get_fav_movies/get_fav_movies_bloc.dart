import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';

part 'get_fav_movies_event.dart';
part 'get_fav_movies_state.dart';

class GetFavMoviesBloc extends Bloc<GetFavMoviesEvent, GetFavMoviesState> {
  FavouriteMovies get _favMoviesRepo => FavouriteMovies();
  GetFavMoviesBloc() : super(GetFavMoviesInitial()) {
    on<GetFavMoviesEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
    on<GetFavMovies>(
      (event, emit) async {
        final favMovies = await _favMoviesRepo.getMovies();

        favMovies.fold(
          (movies) => emit(
            FavMoviesLoaded(favMovies: movies),
          ),
          (error) => emit(
            Err(message: error),
          ),
        );
      },
    );
    on<DeleteMovies>(
      (event, emit) async {
        final favMovies = await _favMoviesRepo.deleteAll();

        favMovies.fold(
          (success) {
            emit(const DeletedAllMovies());
          },
          (error) => emit(
            Err(message: error),
          ),
        );
      },
    );
  }
}

