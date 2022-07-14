import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomErrorView extends StatelessWidget {
  ///
  final void Function(BuildContext context)? retryFunction;
  final String errorMessage;
  const CustomErrorView({
    Key? key,
    required this.retryFunction,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
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
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: const BorderSide(
                color: Colors.green,
                style: BorderStyle.solid,
                width: 1,
              ),
            ),
            child: const Text('Retry'),
            onPressed: () {
              retryFunction?.call(context);
            },
          ),
        ],
      ),
    );
  }
}
