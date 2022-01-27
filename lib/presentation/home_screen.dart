import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yts_bloc_2021/application/movie_suggestions/moviesuggestions_bloc.dart';
import 'package:yts_bloc_2021/application/movies/movies_bloc.dart';
import 'package:yts_bloc_2021/presentation/movies_screen/movies_screen.dart';
import 'package:yts_bloc_2021/widgets/custom_error_view.dart';

class HomeSceren extends StatefulWidget {
  const HomeSceren({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  _HomeScerenState createState() => _HomeScerenState();
}

//! this skips all the widgets in squre brackets
//  if (isBydReplenishment)...[],
class _HomeScerenState extends State<HomeSceren> {
  @override
  void initState() {
    BlocProvider.of<MoviesBloc>(context)
        .add(const MoviesInitialEvent(isInitialFetch: true));
    BlocProvider.of<MoviesuggestionsBloc>(context)
        .add(const MoviesSuggestionInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
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
            return MoviesScreen(
              color: widget.color,
              movies: state.moviesCollection,
              isfetching: state.isFetching,
            );
          }
          if (state is MoviesError) {
            return CustomErrorView(
              retryFunction: (BuildContext context) {
                BlocProvider.of<MoviesBloc>(context)
                    .add(const MoviesInitialEvent(isInitialFetch: true));
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
//! useful widget
// Flexible(
//                     child: Text(
//                   'Processing, please wait!',
//                   textAlign: TextAlign.center,
//                 ))
///////
//! You can use bloc consumer instead of builder to show some extra shits whem the state ore evnet is called
// BlocConsumer<BeerBloc, BeerState>(
//         listener: (context, beerState) {
//           if (beerState is BeerLoadingState) {
//             Scaffold.of(context)
//                 .showSnackBar(SnackBar(content: Text(beerState.message)));
//           } else if (beerState is BeerSuccessState && beerState.beers.isEmpty) {
//             Scaffold.of(context)
//                 .showSnackBar(SnackBar(content: Text('No more beers')));
//           } else if (beerState is BeerErrorState) {
//             Scaffold.of(context)
//                 .showSnackBar(SnackBar(content: Text(beerState.error)));
//             context.bloc<BeerBloc>().isFetching = false;
//           }
//           return;
//         },
//         builder: (context, beerState) {
//           if (beerState is BeerInitialState ||
//               beerState is BeerLoadingState && _beers.isEmpty) {
//             return CircularProgressIndicator();
//           } else if (beerState is BeerSuccessState) {
//             _beers.addAll(beerState.beers);
//             context.bloc<BeerBloc>().isFetching = false;
//             Scaffold.of(context).hideCurrentSnackBar();
//           } else if (beerState is BeerErrorState && _beers.isEmpty) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     context.bloc<BeerBloc>()
//                       ..isFetching = true
//                       ..add(BeerFetchEvent());
//                   },
//                   icon: Icon(Icons.refresh),
//                 ),
//                 const SizedBox(height: 15),
//                 Text(beerState.error, textAlign: TextAlign.center),
//               ],
//             );
//           }
//           return ListView.separated(
//             controller: _scrollController
//               ..addListener(() {
//                 if (_scrollController.offset ==
//                         _scrollController.position.maxScrollExtent &&
//                     !context.bloc<BeerBloc>().isFetching) {
//                   context.bloc<BeerBloc>()
//                     ..isFetching = true
//                     ..add(BeerFetchEvent());
//                 }
//               }),
//             itemBuilder: (context, index) => BeerListItem(_beers[index]),
//             separatorBuilder: (context, index) => const SizedBox(height: 20),
//             itemCount: _beers.length,
//           );
//         },
//       ),
//     );