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
          const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            child: Icon(
              Icons.error,
              color: Colors.white,
              size: 63,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            errorMessage,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlineButton(
            textColor: Colors.white,
            child: const Text('Retry'),
            borderSide: const BorderSide(
              color: Colors.green,
              style: BorderStyle.solid,
              width: 1,
            ),
            onPressed: () {
              retryFunction?.call(context);
            },
          ),
        ],
      ),
    );
  }
}
