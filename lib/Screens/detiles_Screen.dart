import 'package:flutter/material.dart';
import 'package:testproject/model/MyBullet.dart';

class FoodDetailsScreen extends StatefulWidget {
  //test


  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DETAILS'),
          backgroundColor: Color(0xff69A03A),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Image.asset(
                    'asset/Group.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Grapes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Grapes will provide natural nutrients. The  Chemical'
                      'in organic grapes which can be healthier hair and'
                      'skin. It can be improve Your heart health. Protect your'
                      'body from Cancer.',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Nutrition',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Fat',style: TextStyle(
                          fontSize: 8
                      ),),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Potassium',style: TextStyle(
                          fontSize: 8
                      ),),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Selenium',style: TextStyle(
                          fontSize: 12
                      ),),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Vitamin B9'),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Vitamin A'),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Vitamin K'),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Zinc'),
                    ),
                    ListTile(
                      leading:  MyBullet(),
                      title:  Text('Phosphorous'),
                    ),

                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        '&160 Per/ kg',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 5,
                      ),
                      ElevatedButton(
                        child: Text('Buy Now'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
