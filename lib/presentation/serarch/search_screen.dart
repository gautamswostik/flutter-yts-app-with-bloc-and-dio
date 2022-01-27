import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/application/search/search_bloc.dart';
import 'package:yts_bloc_2021/presentation/movie_details_screen/details_screen.dart';
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
  bool isChanged = false;
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_sharp,
          ),
        ),
        title: TextFormField(
          controller: _controller,
          style: GoogleFonts.nunito(
            color: Colors.green,
            fontSize: 14,
          ),
          onChanged: (s) {
            setState(() {
              if (s.isNotEmpty) {
                isChanged = true;
              } else {
                isChanged = false;
              }
            });
          },
          onFieldSubmitted: (changed) {
            if (changed.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please enter movie name!'),
                  backgroundColor: Colors.green,
                ),
              );
            } else {
              BlocProvider.of<SearchBloc>(context)
                  .add(SearchMovieEvent(movieName: changed));
            }
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            hintText: 'Search',
            hintStyle: GoogleFonts.nunito(
              color: Colors.green,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
            suffixIcon: isChanged
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _controller.clear();
                        isChanged = false;
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.green,
                    ))
                : const SizedBox(),
          ),
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
