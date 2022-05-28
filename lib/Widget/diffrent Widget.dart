import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget fruitTitle() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(
              "Organic Fruits",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "(20% Off)",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff4CA300)),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 3,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text("Pick up from organic farms", style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}



Widget buildItem({
  required Function functionFavourite  ,
  Color? iconColor =Colors.grey,
}) {
  return Container(
    decoration: BoxDecoration(
      //color: Colors.green,
    ),
    height: 210,
    width: 118,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 143,
          width: 118,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset("asset/Component 2 – 1dsa.png"),
              Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: iconColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            width: 118,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemSize: 10,
                  itemBuilder: (context, _) =>
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text("Strawberry",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
                Text("300 Per/ kg",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}