import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/presentation/fav_movies/fav_movies_details.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';

class FavMoviesList extends StatelessWidget {
  const FavMoviesList({
    Key? key,
    required this.favMovies,
  }) : super(key: key);
  final List<FavMovies> favMovies;
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
        elevation: 0.0,
        backgroundColor: AppColor.mainColor,
        centerTitle: true,
      ),
      backgroundColor: AppColor.mainColor,
      body: ListView(
        shrinkWrap: true,
        children: favMovies.map(
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
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
      ),
    );
  }
}
