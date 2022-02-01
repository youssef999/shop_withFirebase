// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_new, curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sehetak/screens/y_products_view/product_details.dart';

class AllProductsView extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<AllProductsView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  void initState() {
    Firebase.initializeApp();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Luban   ",
                style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 7,
            ),
            Flexible(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('products')
                      // ignore_for_file.where('brand',isEqualTo:widget.br)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData)
                      return Center(child: Text('Loading'));
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return new Text('Loading...');

                      default:
                        return GridView.builder(
                            itemCount: snapshot.data!.docs.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 3,
                            ), //(orientation == Orientation.portrait) ? 2: 2.2),
                            itemBuilder: (BuildContext context, int index) {
                              DocumentSnapshot posts =
                                  snapshot.data!.docs[index];

                              return Container(
                                  //height:300,
                                  padding: EdgeInsets.all(5),
                                  child: InkWell(
                                    child: Container(
                                      height: 270,
                                      child: Card(
                                        color: Colors.blue[100],
                                        child: Column(children: [
                                          SizedBox(height: 10),
                                          Container(
                                            width: 150,
                                            height: 90,
                                            child: Image.network(posts['image'],
                                                fit: BoxFit.fill),
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            (posts['name']),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            (posts['price']).toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return DetailsView(
                                          name:posts['name'] ,
                                          details: "some details .....",
                                          price: posts["price"],
                                          image: posts["image"],
                                          productId: "productID",
                                        );
                                      }));
                                    },
                                  ));
                            });
                    }
                  }),
            ),
          ]),
        ));
  }
}
