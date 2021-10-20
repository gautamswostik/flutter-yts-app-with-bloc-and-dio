import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/bloc/search/search_bloc.dart';
import 'package:yts_bloc_2021/screens/movie_details_screen/details_creen.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';
import 'package:yts_bloc_2021/widgets/custom_error_view.dart';
import 'package:yts_bloc_2021/widgets/cutom_empty_widget.dart';
import 'package:yts_bloc_2021/widgets/emptymovie.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        title: TextFormField(
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
          onFieldSubmitted: (changed) {
            BlocProvider.of<SearchBloc>(context)
                .add(SearchMovieEvent(movieName: changed));

            setState(() {
              _controller.text = changed;
            });
          },
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: Colors.grey[100],
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[100]!.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[100]!.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            contentPadding: const EdgeInsets.only(
              left: 15.0,
              right: 10.0,
            ),
            labelText: 'Search Movie',
            hintStyle: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            labelStyle: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          autocorrect: false,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        if (state is SearchInitial) {
          return const CustomEmptyView();
        }
        if (state is SearchLoading) {
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
                    state.message,
                    style: GoogleFonts.nunito(),
                  )
                ],
              ),
            ),
          );
        }
        if (state is SearchLoaded) {
          if (state.moviesCollection.data!.movieCount == 0) {
            return const CustomEmptyMovieView();
          } else {
            return ListView.builder(
              itemCount: state.moviesCollection.data!.movies.length,
              itemBuilder: (context, index) {
                var e = state.moviesCollection.data!.movies[index];
                return Column(
                  children: [
                    Card(
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
                                errorWidget: (context, url, error) =>
                                    const Center(
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
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            );
          }
        }
        if (state is SearchError) {
          return CustomErrorView(
            retryFunction: (BuildContext context) {
              BlocProvider.of<SearchBloc>(context)
                  .add(SearchMovieEvent(movieName: _controller.text));
            },
            errorMessage: state.failure.reason,
          );
        }
        return const SizedBox();
      }),
    );
  }
}
