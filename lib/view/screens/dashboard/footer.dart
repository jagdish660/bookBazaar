import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        children: [
          Text('Quick Links', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('About Us | Contact | Privacy Policy | Terms of Service | Help'),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(width: 8.0),
              // Icon(Icons.twitter),
              SizedBox(width: 8.0),
              // Icon(Icons.instagram),
            ],
          ),
          SizedBox(height: 8.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your email to subscribe',
              suffixIcon: Icon(Icons.send),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
