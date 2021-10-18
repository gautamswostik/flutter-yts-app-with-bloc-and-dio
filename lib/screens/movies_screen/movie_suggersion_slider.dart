import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/model/movies.dart';
import 'package:yts_bloc_2021/screens/movie_details_screen/details_creen.dart';

class MovieImageSlider extends StatefulWidget {
  const MovieImageSlider({
    Key? key,
    required this.movies,
  }) : super(key: key);
  final List<Movies> movies;
  @override
  _MovieImageSliderState createState() => _MovieImageSliderState();
}

class _MovieImageSliderState extends State<MovieImageSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.movies.length,
      itemBuilder: (BuildContext context, int index, _) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoviesDetail(
                  movies: widget.movies[index],
                ),
              ),
            );
          },
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                child: CachedNetworkImage(
                  imageUrl: widget.movies[index].mediumCoverImage,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ))),
                  errorWidget: (context, url, error) => const Center(
                    child: Icon(Icons.error),
                  ),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 15),
                  child: Text(
                    widget.movies[index].titleEnglish,
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          ),
        );
      },
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
      ),
    );
  }
}
