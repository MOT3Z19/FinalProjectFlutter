import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CardOrders extends StatelessWidget {

  final int imageNumber;
  final String title;


  CardOrders({required this.imageNumber,required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [

          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsetsDirectional.only(start: 10,top: 10,end: 10,bottom: 10),
              child:
              ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: Container(
                      child: Image.asset('asset/Fruit_$imageNumber.png',height: 100,width: 100,)))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],

              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Text(
                'Rate this Product',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Delivered on 24 feb 2021',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
