// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  Function sendDataMethod;
  StarRating({
    Key? key,
    required this.sendDataMethod,
  }) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: _rating >= 1
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.star_outline_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
          onTap: () {
            rate(1);
            widget.sendDataMethod();
          },
        ),
        GestureDetector(
          child: _rating >= 2
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.star_outline_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
          onTap: () {
            rate(2);
            widget.sendDataMethod();
          },
        ),
        GestureDetector(
          child: _rating >= 3
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.star_outline_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
          onTap: () {
            rate(3);
            widget.sendDataMethod();
          },
        ),
        GestureDetector(
          child: _rating >= 4
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.star_outline_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
          onTap: () {
            rate(4);
            widget.sendDataMethod();
          },
        ),
        GestureDetector(
          child: _rating >= 5
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.star_outline_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
          onTap: () {
            rate(5);
            widget.sendDataMethod();
          },
        )
      ],
    );
  }
}
