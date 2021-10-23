import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/bloc/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/bloc/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/bloc/search/search_bloc.dart';
import 'package:yts_bloc_2021/model/movies.dart';
import 'package:yts_bloc_2021/screens/movie_details_screen/details_creen.dart';
import 'package:yts_bloc_2021/screens/movies_screen/movie_suggersion_slider.dart';
import 'package:yts_bloc_2021/screens/serarch/search_screen.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';
import 'package:yts_bloc_2021/utils/genres.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({
    Key? key,
    required this.movies,
    required this.isfetching,
  }) : super(key: key);
  final List<Movies> movies;
  final bool isfetching;
  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  String selectedGenre = '';
  // int page = 1;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        BlocProvider.of<MoviesBloc>(context).add(
            MoviesInitialEvent(movies: widget.movies, isInitialFetch: false));
      }
    });
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
              BlocProvider.of<SearchBloc>(context).add(SearchInitialEvent());
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          controller: scrollController,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            BlocBuilder<MoviesuggestionsBloc, MoviesuggestionsState>(
              builder: (context, state) {
                if (state is MoviesuggestionsInitial) {
                  return const Center(
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          )));
                }
                if (state is MoviesuggestionsLoaded) {
                  return MovieImageSlider(
                    movies: state.moviesCollection.data!.movies,
                  );
                }

                return const SizedBox.shrink();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const VerticalDivider(
                  color: Colors.transparent,
                  width: 5,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  // Genre genre = genres[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGenre = genres[index];
                            context
                                .read<MoviesBloc>()
                                .add(MoviesByGenreEvent(genre: selectedGenre));
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              color: (genres[index] == selectedGenre)
                                  ? Colors.black45
                                  : Colors.white),
                          child: Text(
                            genres[index].toUpperCase(),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: (genres[index] == selectedGenre)
                                    ? Colors.white
                                    : Colors.black45,
                                fontFamily: 'muli'),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  "Movies".toUpperCase(),
                  style: GoogleFonts.nunito(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.arrow_right_sharp,
                  size: 40,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ...widget.movies.map(
              (e) {
                return Card(
                  color: Colors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoviesDetail(
                            movies: e,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          child: CachedNetworkImage(
                            imageUrl: e.largeCoverImage,
                            height: 500,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                Image.asset('assets/yts_olace.jpg'),
                            errorWidget: (context, url, error) => const Center(
                              child: Icon(Icons.error),
                            ),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 40,
                          thickness: 5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
            widget.isfetching
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
