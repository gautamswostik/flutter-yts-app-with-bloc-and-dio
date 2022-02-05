import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEmptyMovieView extends StatelessWidget {
  const CustomEmptyMovieView({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            child: Icon(
              Icons.movie,
              color: Colors.white,
              size: 63,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
