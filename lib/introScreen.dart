
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testproject/Widget/introWidget1.dart';
import 'package:testproject/Widget/introWidget2.dart';





class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<introScreen> {
  int _currentPage = 0;
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Visibility(
                    visible: _currentPage != 2,replacement: TextButton(onPressed: ()=>
                      Navigator.pushReplacementNamed(context, '/loginScreen'), child: Text('Start'),),
                    child: TextButton(onPressed: (){
                      _pageController.jumpToPage(2);
                    }, child: Text('SKIP',style: TextStyle(
                      color: Color(0xFF898989) ,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),)),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int Page) {
                      setState(() {});
                      _currentPage = Page;
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      out_bording_content(
                        imageNumber:1,
                        title: 'E Shopping',
                        desc: 'Explore  top organic fruits & grab them',
                      ),
                      out_bording_content(
                        imageNumber:2,
                        title: 'Delivery on the way',
                        desc: 'Get your order by speed delivery',
                      ),
                      out_bording_content(
                        imageNumber:3,
                        title: 'Delivery Arrived',
                        desc: 'Get your order by speed delivery',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutBoardingIndicator(marginEnd: 14,selected: _currentPage == 0,),
                    OutBoardingIndicator(marginEnd: 14,selected: _currentPage == 1,),
                    OutBoardingIndicator(marginEnd: 14,selected: _currentPage == 2,),
                  ],
                ),
                SizedBox(
                  height: 39,
                ),
                Visibility(
                  visible: _currentPage == 2,
                  child: ElevatedButton(
                    onPressed: ()  =>
                        Navigator.pushReplacementNamed(context, '/SingIN'),


                    child: Text('Start'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 53),
                        primary: Color(0xFF6A90F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22))),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Visibility(
                      visible: _currentPage !=0,
                      child: IconButton(onPressed: (){
                        _pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
                      }, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Visibility(
                      visible: _currentPage != 2,
                      child: IconButton(onPressed: (){
                        _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
                      }, icon: Icon(Icons.arrow_forward_ios)),
                    )
                  ],
                ),
                SizedBox(height: 20,)

              ],

            ),
          )),
    );
  }
}
