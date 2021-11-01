import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yts_bloc_2021/bloc/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/bloc/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/bloc/search/search_bloc.dart';
import 'package:yts_bloc_2021/screens/home_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

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
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeSceren(),
      ),
    );
  }
}
