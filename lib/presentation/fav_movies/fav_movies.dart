import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yts_bloc_2021/application/get_fav_movies/get_fav_movies_bloc.dart';
import 'package:yts_bloc_2021/presentation/fav_movies/fav_movies_list.dart';
import 'package:yts_bloc_2021/widgets/emptymovie.dart';

class FavMoviesScreen extends StatefulWidget {
  const FavMoviesScreen({Key? key}) : super(key: key);

  @override
  _FavMoviesScreenState createState() => _FavMoviesScreenState();
}

class _FavMoviesScreenState extends State<FavMoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavMoviesBloc, GetFavMoviesState>(
      builder: (context, state) {
        if (state is FavMoviesLoaded) {
          if (state.favMovies.isEmpty) {
            return const CustomEmptyMovieView(
              message: 'Movies not found',
            );
          } else {
            return FavMoviesList(
              favMovies: state.favMovies,
            );
          }
        }
        return const SizedBox();
      },
    );
  }
}
