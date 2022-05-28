import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class out_bording_content extends StatelessWidget {
  final int imageNumber;
  final String title;
  final String desc;

  out_bording_content({required this.imageNumber, required this.title ,required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'asset/shop_$imageNumber.jpg',
            height: 300,
            width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            desc,
            style: (
                TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                )
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
