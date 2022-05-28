import 'package:flutter/material.dart';
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 5.0,
      width: 5.0,
      decoration: new BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

Widget myAccountItem(
    {required String labelName,
      required IconData iconData,
      required Function function}) {
  return GestureDetector(
    onTap: (){},
    child: Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: Colors.grey.shade300,
            ),
          )),
      width: double.infinity,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Color(0xff69A03A),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              labelName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins"),
            ),
          ],
        ),
      ),
    ),
  );
}
