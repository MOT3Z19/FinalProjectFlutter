import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testproject/Firebase/Firestore_Controller.dart';
import 'package:testproject/Screens/Add_Product.dart';
import 'package:testproject/model/helpers.dart';
import 'package:testproject/model/product.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View>with Helpers {
  late PageController _pageController;
  int _cuurentpage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff4f4f4),

      appBar: AppBar(

        toolbarHeight: 100,
        backgroundColor: Color(0xff69A03A),
        elevation: 0,
        title: Text('View Product',style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:SafeArea(

        child: Column(

          children: [
            StreamBuilder<QuerySnapshot<Product>>(
                stream:FbFireStoreController().read(),
                builder: (context, snapshot) {
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else if(snapshot.hasData&&snapshot.data!.docs.isNotEmpty){

                    return   Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 12,end: 12),
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount:snapshot.data!.docs.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 13,

                              mainAxisSpacing: 13,
                              childAspectRatio: 100/160,
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (context,index){
                              return    Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 1),
                                    Image.asset('asset/Component 2 – 1dsa.png',),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 20),
                                      child: Text(snapshot.data!.docs[index].data().title,style: TextStyle(
                                        color: Color(0xff474559),
                                        fontSize: 20,
                                      ),),
                                    ),
                                    SizedBox(height: 10,),

                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(snapshot.data!.docs[index].data().price,style: TextStyle(
                                            color: Color(0xff9E9DB0),
                                            fontSize: 15,
                                          ),),
                                          Spacer(),
                                          IconButton(onPressed:()async{
                                            _deleteProduct(snapshot.data!.docs[index].id);
                                          }, icon:Icon(Icons.delete,
                                            color: Color(0xffDD2828),)),
                                          // IconButton(onPressed:()async{
                                          //  navigateToUpdateNoteScreen(snapshot, index);
                                          // }, icon:Icon(Icons.update,
                                          //   color: Color(0xff474559),),),
                                          IconButton(
                                            onPressed: ()async{
                                              navigateToUpdateNoteScreen(snapshot, index);
                                            }, icon:Icon(Icons.update)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ) ;
                  } else {
                    return Center(
                      child: Text("NO Product"),
                    );
                  }
                }
            ),


          ],
        ),
      ),
    );
  }
  void navigateToUpdateNoteScreen(
      AsyncSnapshot<QuerySnapshot<Product>> snapshot, int index) {
    QueryDocumentSnapshot<Product> noteSnapshot = snapshot.data!.docs[index];
    Product product = noteSnapshot.data();
    product.id = noteSnapshot.id;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddProduct(
          product: product,
        ),
      ),
    );
  }
  Future<void> _deleteProduct(String id) async {
    bool deleted = await FbFireStoreController().delete(path: id);
    String message =
    deleted ? 'Product deleted successfully' : 'Product delete failed!';
    showSnackBar(context, message: message, error: !deleted);
  }
}


