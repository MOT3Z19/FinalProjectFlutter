
import 'dart:ui';

import 'package:flutter/material.dart';

import '../Widget/Card_Orders.dart';

class myOrders extends StatefulWidget {
  const myOrders({Key? key}) : super(key: key);

  @override
  State<myOrders> createState() => _myOrdersState();
}

class _myOrdersState extends State<myOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff69A03A),
        title: Text('My Orders'),
      ),
      body: ListView(
        children: [
          CardOrders(imageNumber: 1,title: 'Orange',),
        ],
      ),
    );
  }
}
