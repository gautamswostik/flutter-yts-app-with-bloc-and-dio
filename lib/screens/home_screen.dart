import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/bloc/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/bloc/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/screens/movies_screen/movies_screen.dart';
import 'package:yts_bloc_2021/screens/serarch/search_screen.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';
import 'package:yts_bloc_2021/widgets/custom_error_view.dart';

class HomeSceren extends StatefulWidget {
  const HomeSceren({Key? key}) : super(key: key);

  @override
  _HomeScerenState createState() => _HomeScerenState();
}

class _HomeScerenState extends State<HomeSceren> {
  @override
  void initState() {
    BlocProvider.of<MoviesBloc>(context).add(const MoviesInitialEvent());
    BlocProvider.of<MoviesuggestionsBloc>(context)
        .add(const MoviesSuggestionInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        title: Image.asset(
          'assets/yts.png',
          height: 100,
          width: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: AppColor.mainColor,
        centerTitle: true,
      ),
      body: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          if (state is MoviesInitial) {
            return Center(
              child: AlertDialog(
                title: Row(
                  children: [
                    const CircularProgressIndicator(
                      color: Colors.green,
                      // lineWidth: 4.0,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      state.initialMessage,
                      style: GoogleFonts.nunito(),
                    )
                  ],
                ),
              ),
            );
          }
          if (state is MoviesLoaded) {
            return MoviesScreen(movies: state.moviesCollection.data!.movies);
          }
          if (state is MoviesError) {
            return CustomErrorView(
              retryFunction: (BuildContext context) {
                BlocProvider.of<MoviesBloc>(context)
                    .add(const MoviesInitialEvent());
                BlocProvider.of<MoviesuggestionsBloc>(context)
                    .add(const MoviesSuggestionInitialEvent());
              },
              errorMessage: state.failure.reason,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
