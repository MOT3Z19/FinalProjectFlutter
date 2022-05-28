import 'package:flutter/material.dart';
import 'package:testproject/Screens/Favourite.dart';
import 'package:testproject/Screens/HomeScreen.dart';
import 'package:testproject/Screens/Orders_Screen.dart';
import 'package:testproject/Screens/Profile_Screen.dart';
import 'package:testproject/Screens/detiles_Screen.dart';
import 'package:testproject/model/BnScreen.dart';



class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _currentindex = 0;
  List<BnScreen> _bnScreens = <BnScreen>[
    BnScreen(title: 'Home',widget: homeScreen()),

    BnScreen(title: 'Cart',widget: myOrders()),

    BnScreen(title: 'Favourite',widget: favouriteScreen()),

    BnScreen(title: 'Account',widget: accountScreen()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _bnScreens[_currentindex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedItemIndex){
          setState(() {
            _currentindex = selectedItemIndex;
          });
        },
        currentIndex: _currentindex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xff69A03A),
        fixedColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),label: 'Fruit Market',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart),label: 'Shopping Cart',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_circle),label: 'Account',
          ),
        ],
      ),
    );
  }
}
