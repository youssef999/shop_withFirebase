// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sehetak/screens/y_products_view/y_widgets.dart';

class DetailsView extends StatelessWidget {
  String ? name;
  num ? price;
  String ? details;
  String ? image;
  String ?productId;

  DetailsView(
      {this.name, this.image, this.price, this.details, this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        SizedBox(
          height: 30,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: Image.network(image!, fit: BoxFit.fill)),
        SizedBox(height: 15),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(17),
              child: Column(
                children: [
               
                  Custom_Text(
                    text: name.toString(),
                    fontSize: 26,
                  ),
                  SizedBox(height: 15),

                  SizedBox(
                    height: 20,
                  ),
                  Custom_Text(
                      text:'details',
                      fontSize:18,
                      color:Colors.red
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Text(
                      details!,
                      style:TextStyle(color:Colors.black,fontSize:16)
                  ),

                  // Text(
                  //     price!.toString(),
                  //     style:TextStyle(color:Colors.black,fontSize:16)
                  // ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Custom_Text(
                    text: price.toString(),
                    fontSize: 22,
                    color: Colors.red
                  ),
                  
                ],
              ),
              SizedBox(width: 55),
       
            ],
          ),
        ),
      ])),
    );
  }
}
