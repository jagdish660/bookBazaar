import 'package:bookbazzar/view/screens/dashboard/recommended_book_carousel.dart';
import 'package:bookbazzar/view/screens/dashboard/section_title.dart';
import 'package:bookbazzar/view/screens/dashboard/top_categories.dart';
import 'package:bookbazzar/view/screens/dashboard/trending_books_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'author_of_month.dart';
import 'featured_book_banner.dart';
import 'footer.dart';
import 'new_realese_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Bazaar'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Handle profile action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                // Handle Categories tap
              },
            ),
            ListTile(
              title: Text('Best Sellers'),
              onTap: () {
                // Handle Best Sellers tap
              },
            ),
            ListTile(
              title: Text('New Releases'),
              onTap: () {
                // Handle New Releases tap
              },
            ),
            ListTile(
              title: Text('My Library'),
              onTap: () {
                // Handle My Library tap
              },
            ),
            ListTile(
              title: Text('Wishlist'),
              onTap: () {
                // Handle Wishlist tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturedBookBanner(),
            SectionTitle(title: 'Recommended for You'),
            RecommendedBooksCarousel(),
            SectionTitle(title: 'Trending Books'),
            TrendingBooksGrid(),
            SectionTitle(title: 'Top Categories'),
            TopCategories(),
            SectionTitle(title: 'New Releases'),
            NewReleasesList(),
            SectionTitle(title: 'Author of the Month'),
            AuthorOfTheMonth(),
            Footer(),
          ],
        ),
      ),
    );
  }
}












