import 'package:flutter/material.dart';
import 'package:testproject/Screens/NotificationScreen.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Color(0xff69A03A),
          elevation: 0,
        ),
        body: ListView(
          children: [
            ListTile(leading: Icon(Icons.account_circle),title: Text('Account'),),
            Divider(thickness: 0.5,),
            ListTile(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Notification_Setting()));
            },
              leading: Icon(Icons.notifications),title: Text('Notification'),),
            Divider(thickness: 0.5,),
            ListTile(leading: Icon(Icons.language),title: Text('Language'),),
            Divider(thickness: 0.5,),
            ListTile(leading: Icon(Icons.location_on),title: Text('Change Address'),),
          ],
        )
    );
  }
}
