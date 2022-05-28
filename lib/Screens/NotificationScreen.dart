

import 'package:flutter/material.dart';

class Notification_Setting extends StatefulWidget {
  const Notification_Setting({Key? key}) : super(key: key);

  @override
  State<Notification_Setting> createState() => _Notification_SettingState();
}

class _Notification_SettingState extends State<Notification_Setting> {
  bool _notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification_Setting'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: Icon(Icons.notifications),
            title: Text('My Account'),
            subtitle: Text('You will receive daily updates'),
            onChanged: (bool value) {
              setState(() {
                _notification = value;
              });
            },
            value: _notification,
          ),

          SwitchListTile(
            secondary: Icon(Icons.notifications),
            title: Text('Pramotional Notifications'),
            subtitle: Text('You will receive daily updates'),
            onChanged: (bool value) {
              setState(() {
             //   _notification = value;
              });
            },
            value: _notification,
          ),
        ],
      ),
    );
  }
}
