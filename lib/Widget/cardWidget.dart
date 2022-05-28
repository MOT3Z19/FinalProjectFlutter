
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Card buildCard() {
  return Card(
    child: Container(
      width: 150,

      child: Column(
        children: [
          Container(
            child: Image.network(
                'https://source.unsplash.com/random/800x600?house'),
          ),
          Row(
              children:[

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    onRatingUpdate: (rating){
                      print(rating);
                    },
                  ),
                ),

              ]
          ),
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
            child: Column(
              children: [
                Text('Strawberry',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                Text('300 Per/kg'),
              ],
            ),
          )


        ],
      ),
    ),
  );
}
