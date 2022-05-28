import 'package:flutter/material.dart';
import 'package:testproject/Screens/Favourite.dart';
import 'package:testproject/Screens/Orders_Screen.dart';
import 'package:testproject/Screens/Setting.dart';
import 'package:testproject/Widget/Card_Orders.dart';


class accountScreen extends StatefulWidget {
  const accountScreen({Key? key}) : super(key: key);

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Color(0xff69A03A),
        width: double.infinity,
        height: 229,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 50,
                backgroundImage: AssetImage('asset/profile.png'),
              ), //CircleAvatar
              SizedBox(
                height: 8,
              ),
              Text(
                'Manish Chutake',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),

              SizedBox(
                height: 2,
              ),
              Text(
                'manishuxuid@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => myOrders()));
                    },
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_bag),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => favouriteScreen()));
                    },
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Settings_Screen()));
                    },
                    title: Text('Settings'),
                    leading: Icon(Icons.settings),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myOrders()));
                    },
                    title: Text('My Cart'),
                    leading: Icon(Icons.shopping_cart),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Rate us'),
                    leading: Icon(Icons.star_rate),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Refer a Friend'),
                    leading: Icon(Icons.share_outlined),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Help'),
                    leading: Icon(Icons.help),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Log Out'),
                    leading: Icon(Icons.logout),
                  ),
                ],
              )))
    ]);
  }
}
