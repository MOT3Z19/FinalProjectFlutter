import 'package:flutter/material.dart';
class AccountSetting extends StatelessWidget {
  const AccountSetting({Key? key}) : super(key: key);

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
            ListTile(leading: Icon(Icons.security),title: Text('Security'),),
            Divider(thickness: 0.5,),
            ListTile(leading: Icon(Icons.desktop_access_disabled),title: Text('Deactivate Account'),),
            Divider(thickness: 0.5,),
            ListTile(leading: Icon(Icons.delete),title: Text('Delete Account'),),

          ],
        )
    );
  }
}
