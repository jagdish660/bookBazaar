import 'package:flutter/cupertino.dart';

import 'book_card.dart';
import 'home_screen.dart';

class NewReleasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          BookCard(),
          BookCard(),
          BookCard(),
          BookCard(),
        ],
      ),
    );
  }
}