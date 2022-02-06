import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart';
import 'package:yts_bloc_2021/application/get_fav_movies/get_fav_movies_bloc.dart';
import 'package:yts_bloc_2021/application/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/application/search/search_bloc.dart';
import 'package:yts_bloc_2021/flavor_config.dart';
import 'package:yts_bloc_2021/presentation/home_screen.dart';

class App extends StatefulWidget {
  const App({Key? key, required this.config}) : super(key: key);
  final FlavorConfig config;
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MoviesBloc>(
          create: (context) => MoviesBloc(),
        ),
        BlocProvider<MoviesuggestionsBloc>(
          create: (context) => MoviesuggestionsBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
        BlocProvider<FavMoviesBloc>(
          create: (context) => FavMoviesBloc(),
        ),
        BlocProvider<GetFavMoviesBloc>(
          create: (context) => GetFavMoviesBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: widget.config.appcolor,
        theme: ThemeData(
          //! change color while dragging scrollview
          colorScheme: ColorScheme.fromSwatch(accentColor: Colors.green),
        ),
        home: HomeSceren(
          color: widget.config.appcolor,
        ),
      ),
    );
  }
}
