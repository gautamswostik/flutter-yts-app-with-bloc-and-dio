import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/application/get_fav_movies/get_fav_movies_bloc.dart';
import 'package:yts_bloc_2021/presentation/fav_movies/fav_movies_details.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';
import 'package:yts_bloc_2021/widgets/emptymovie.dart';

class FavMoviesScreen extends StatefulWidget {
  const FavMoviesScreen({Key? key}) : super(key: key);

  @override
  _FavMoviesScreenState createState() => _FavMoviesScreenState();
}

class _FavMoviesScreenState extends State<FavMoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_sharp,
          ),
        ),
        title: Text(
          'Favourite Movies',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Delete All',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    content: Text(
                      'Are you sure you want to delete all your favourite movies?',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<GetFavMoviesBloc>(context)
                              .add(const DeleteMovies());
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Delete',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: AppColor.mainColor,
        centerTitle: true,
      ),
      backgroundColor: AppColor.mainColor,
      body: BlocBuilder<GetFavMoviesBloc, GetFavMoviesState>(
        builder: (context, state) {
          if (state is FavMoviesLoaded) {
            if (state.favMovies.isEmpty) {
              return const CustomEmptyMovieView(
                message: 'Movies not found',
              );
            } else {
              return ListView(
                shrinkWrap: true,
                children: state.favMovies.map(
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
                              builder: (context) => FavMovieDetailScreen(
                                color: AppColor.mainColor,
                                movie: e,
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
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
                    );
                  },
                ).toList(),
              );
            }
          }
          if (state is DeletedAllMovies) {
            return const CustomEmptyMovieView(
              message: 'Movies not found',
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
