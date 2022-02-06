import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:yts_bloc_2021/application/fav_movies/fav_movies_bloc.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_torrent.dart';
import 'package:yts_bloc_2021/infrastructure/yts/entities/movies.dart';
import 'package:yts_bloc_2021/presentation/movie_details_screen/movies_backdrop.dart';
import 'package:yts_bloc_2021/utils/app_color.dart';

class MoviesDetail extends StatefulWidget {
  const MoviesDetail({
    Key? key,
    required this.movie,
    this.color = AppColor.mainColor,
  }) : super(key: key);
  final Movies movie;
  final Color color;
  @override
  _MoviesDetailState createState() => _MoviesDetailState();
}

class _MoviesDetailState extends State<MoviesDetail> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.movie.ytTrailerCode,
      params: const YoutubePlayerParams(
        autoPlay: false,
        showControls: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: false,
      ),
    );
    BlocProvider.of<FavMoviesBloc>(context).add(
      IsFavMovie(
        movieId: widget.movie.id,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_sharp,
          ),
        ),
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: Text(
          widget.movie.titleEnglish,
          style: GoogleFonts.nunito(
            // color: AppColor.mainColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          BlocConsumer<FavMoviesBloc, FavMoviesState>(
            listener: (context, state) {
              if (state is SomeError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is IsFavMovieState) {
                return IconButton(
                  onPressed: () {
                    BlocProvider.of<FavMoviesBloc>(context).add(
                      DeleteFavMovie(
                        movieId: widget.movie.id,
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ),
                );
              }
              if (state is NotFavMovieState) {
                return IconButton(
                  onPressed: () {
                    BlocProvider.of<FavMoviesBloc>(context).add(
                      SaveMovie(
                        movie: FavMovies(
                          id: widget.movie.id,
                          title: widget.movie.titleEnglish,
                          rating: widget.movie.rating,
                          description: widget.movie.descriptionFull,
                          imdbcode: widget.movie.imdbCode,
                          posterBackground: widget.movie.mediumCoverImage,
                          poster: widget.movie.mediumCoverImage,
                          ytcode: widget.movie.ytTrailerCode,
                          largeCoverImage: widget.movie.largeCoverImage,
                          torrents: widget.movie.torrents
                              .map(
                                (e) => TorrentLocal(
                                  url: e.url,
                                  hash: e.hash,
                                  quality: e.quality,
                                  type: e.type,
                                  seeds: e.seeds,
                                  peers: e.peers,
                                  size: e.size,
                                  sizeBytes: e.sizeBytes,
                                  dateUploaded: e.dateUploaded,
                                ),
                              )
                              .toList(),
                          genres: widget.movie.genres,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.green,
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          DetailsScreen(
            moviesCOverImage: widget.movie.mediumCoverImage,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              // shrinkWrap: true,
              children: [
                ClipRRect(
                  child: CachedNetworkImage(
                    imageUrl: widget.movie.mediumCoverImage,
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Download".toUpperCase(),
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
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black45),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    color: AppColor.mainColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25.0,
                                      right: 25.0,
                                      top: 20.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            style: GoogleFonts.nunito(
                                              color: Colors.green,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    'You must have torrent client like ',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                  text: 'µTorrent',
                                                  style: GoogleFonts.nunito(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    color: Colors.green,
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          _launchURL(
                                                            context,
                                                            'https://play.google.com/store/apps/details?id=com.utorrent.client.pro&hl=en&gl=US',
                                                            Colors.green,
                                                          );
                                                        }),
                                              TextSpan(
                                                text: ' or ',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                  text: 'BitTorrent',
                                                  style: GoogleFonts.nunito(
                                                    color: Colors.blue,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          _launchURL(
                                                            context,
                                                            'https://play.google.com/store/apps/details?id=com.bittorrent.client&hl=en&gl=US',
                                                            Colors.blue,
                                                          );
                                                        }),
                                              TextSpan(
                                                text:
                                                    ' installed in your phone. ',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        icon: const Icon(
                          Icons.info,
                          color: Colors.green,
                          size: 30,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ...widget.movie.torrents.map((e) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            children: [
                              Text(
                                e.quality,
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              e.type.isEmpty
                                  ? const SizedBox()
                                  : Chip(
                                      label: Text(
                                        e.type.toUpperCase(),
                                        style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      backgroundColor: Colors.green,
                                      elevation: 6.0,
                                      shadowColor: Colors.grey[60],
                                      padding: const EdgeInsets.all(8.0),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(
                            context,
                            e.url,
                            Colors.green,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.download,
                                color: Colors.green,
                                size: 45,
                              )),
                        ),
                      ),
                    ],
                  );
                }).toList(),
                const SizedBox(
                  height: 10,
                ),
                widget.movie.ytTrailerCode.isEmpty
                    ? const SizedBox()
                    : Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Trailer".toUpperCase(),
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
                          YoutubePlayerIFrame(
                            controller: _controller,
                            aspectRatio: 16 / 9,
                          ),
                        ],
                      ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Rating".toUpperCase(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.imdb,
                          size: 25.0,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          widget.movie.rating.toString() + ' / 10',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL(
                          context,
                          'https://www.imdb.com/title/${widget.movie.imdbCode}/',
                          AppColor.imdbColor,
                        );
                      },
                      child: Text(
                        'Check IMDB'.toUpperCase(),
                        style: GoogleFonts.nunito(
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                widget.movie.genres.isEmpty
                    ? const SizedBox()
                    : Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Genres".toUpperCase(),
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
                          SizedBox(
                            height: 45,
                            child: ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const VerticalDivider(
                                color: Colors.transparent,
                                width: 5,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.movie.genres.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black45),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(25)),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        widget.movie.genres[index]
                                            .toUpperCase(),
                                        style: GoogleFonts.nunito(
                                          color: AppColor.mainColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                const SizedBox(
                  height: 10,
                ),
                widget.movie.descriptionFull.isNotEmpty
                    ? Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Description".toUpperCase(),
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
                          Text(
                            widget.movie.descriptionFull,
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(
    BuildContext context,
    String url,
    Color webColor,
  ) async {
    try {
      await launch(
        url,
        customTabsOption: CustomTabsOption(
          toolbarColor: webColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          extraCustomTabs: const <String>[
            'org.mozilla.firefox',
            'com.microsoft.emmx',
          ],
        ),
        safariVCOption: const SafariViewControllerOption(
          preferredBarTintColor: AppColor.imdbColor,
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }

    Future.delayed(const Duration(seconds: 5), () {});
  }
}
