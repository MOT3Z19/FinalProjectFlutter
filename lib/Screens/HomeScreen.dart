import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testproject/Screens/Add_Product.dart';
import 'package:testproject/Widget/diffrent%20Widget.dart';

import '../Widget/cardWidget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int index = 1;
  bool isred = false;
  late bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          height: 150.0,
          child: Stack(
            children: <Widget>[
              Container(
                color: Color(0xff69A03A),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Fruit Market",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddProduct()));
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 10.2),
                            blurRadius: 5.2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff69A03A),
                            ),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: index == 1 ? Color(0xffCC7D00) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Vegetables',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: index == 1 ? Colors.white : Color(0xff989898),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: index == 2 ? Color(0xffCC7D00) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Fruits',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: index == 2 ? Colors.white : Color(0xff989898),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: index == 3 ? Color(0xffCC7D00) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Dry Fruits',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: index == 3 ? Colors.white : Color(0xff989898),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                SizedBox(
                  height: 10,
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(
                          functionFavourite: () {
                            setState(() {
                              isred = !isred;
                            });
                          },
                          iconColor: isred ? Colors.red : Colors.grey),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
                fruitTitle(),
                Container(
                  height: 210,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildItem(functionFavourite: (){}),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: 5),
                ),
              ],
            ),
          ),
        ),
    ]

    );
  }
}
