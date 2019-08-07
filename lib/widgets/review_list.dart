import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/images/aydee.jpeg', 'Aydee cilla', '1 review 5 photos', 'There is an amazing place in Japanese'),
        Review('assets/images/aydee.jpeg', 'Anana', '1 review 5 photos', 'There is an amazing place in Japanese'),
        Review('assets/images/aydee.jpeg', 'loqvve', '1 review 5 photos', 'There is an amazing place in Japanese')
      ],
    );
  }

}
