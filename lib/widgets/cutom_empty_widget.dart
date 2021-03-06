import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEmptyView extends StatelessWidget {
  ///

  const CustomEmptyView({
    Key? key,
  }) : super(key: key);

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
            'No Movies to show just yet.',
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
          Text(
            'When there are available Movies, it will be listed here.',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
