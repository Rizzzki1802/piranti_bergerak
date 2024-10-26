import 'package:flutter/material.dart';
import 'feed_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Rizki'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Story
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StoryCircle(),

              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                FeedCard(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://images.pexels.com/photos/29036407/pexels-photo-29036407.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), // Ganti dengan URL story
          ),
          SizedBox(height: 5),
          Text('User'),
        ],
      ),
    );
  }
}
