import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text('Book Cover'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Book Title', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}