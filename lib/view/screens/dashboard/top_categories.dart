
import 'package:flutter/cupertino.dart';

import 'category_card.dart';
import 'home_screen.dart';

class TopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(category: 'Fiction'),
          CategoryCard(category: 'Non-Fiction'),
          CategoryCard(category: 'Sci-Fi'),
          CategoryCard(category: 'Romance'),
        ],
      ),
    );
  }
}