import 'package:mockito/annotations.dart';
import 'package:yts_bloc_2021/application/core/entities/failure.dart';
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart';
import 'package:yts_bloc_2021/application/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/application/search/search_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/fav_movies_repo.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/infrastructure/yts/yts_repo.dart';

@GenerateMocks([
  // BLOCkS
  MoviesBloc,
  SearchBloc,
  MoviesuggestionsBloc,
  FavMoviesBloc,
  // Repositories
  MovieRepository,
  FavouriteMoviesRepository,
  // Models
  MoviesCollection,
  Movies,
  // Entities
  Failure,
])
void main() {}
